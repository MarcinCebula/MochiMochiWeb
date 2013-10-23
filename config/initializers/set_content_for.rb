module ActionView
  module Helpers
    module CaptureHelper
      def set_content_for(name, content = nil, &block)
        if content || block_given?
          content = capture(&block) if block_given?
          @view_flow.set(name, content) if content
          nil
        else
          @view_flow.get(name)
        end 
      end
    end
  end
end