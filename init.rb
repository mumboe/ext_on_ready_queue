require 'queue_for'
require 'ext_on_ready_queue_helper'
ActionView::Base.send :include, ExtOnReadyHelper
