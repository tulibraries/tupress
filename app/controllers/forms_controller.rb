# frozen_string_literal: true

class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(params[:form])
    @form.request = request
    # if ApplicationMailer.router(@form).deliver
    if @form.deliver
      redirect_to "/#{@form.type.dasherize}", notice: 'Thank you for your message. We will contact you soon!' 
    else
      redirect_to "/#{@form.type.dasherize}", notice: 'Message could not be sent'
    end
  end
end
