module Padrino
  module RenderFor
    def render_for(data=nil, options={}, locals={})
      render("#{request.controller}/#{data == :action ? request.action : data}", options, locals)
    end
    
    def render_action
      render_for :action
    end
    alias :render_for_action :render_action
  end
end