# frozen_string_literal: true

class FormsController < ApplicationController

  def contact
    @form = Form.new(params[:form])
  end

  def review_copy
    @form = Form.new(params[:form])
  end

  def copy_request
    @form = Form.new(params[:form])
  end

  def create
    @form = Form.new(params[:form])
    @form.request = request
    
    if @form.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      render action: @form.type
    else
      flash.now[:error] = 'Cannot send message.'
      render action: @form.type
    end
  end
end
