# frozen_string_literal: true

class FormsController < ApplicationController

  def contact
    @form = Form.new(params[:form])
    @page = Page.find_by_name("Contact")
  end

  def review_copy
    @form = Form.new(params[:form])
  end

  def copy_request
    @form = Form.new(params[:form])
  end

  def rights
    @form = Form.new(params[:form])
  end

  def create
    @form = Form.new(params[:form])
    @form.request = request
    
    if @form.deliver
      redirect_to root_path, notice: 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render action: @form.type
    end
  end
end
