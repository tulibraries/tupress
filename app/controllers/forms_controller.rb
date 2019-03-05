# frozen_string_literal: true

class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(params[:form])
    @form.request = request
    
    if @form.deliver
      redirect_to "/#{@form.type.dasherize}", notice: 'Thank you for your message. We will contact you soon!' 
    else
      @messages = Array.new
      @form.errors.each do |key,value|
        @messages << key.to_s.humanize.capitalize+' '+value.to_s
      end
      redirect_to "/#{@form.type.dasherize}", notice: @messages.join(', ')
    end
  end
end
