module ExtOnReadyHelper
  def queue_for__on_ready(kv={}, &block)
    index = kv.delete(:index)

    # capture or require content
    if block_given?
      content = capture(&block)
    else
      raise "need :content if no block is given" if not kv.key? :content
      content = kv[:content].to_s
    end

    
    queue_for({:name => "ext_on_ready", :index => index, :content => content})
  end
  
  def on_ready_queue_render
    "Ext.onReady(function(){#{@content_for_ext_on_ready.to_s}});"
  end
end
