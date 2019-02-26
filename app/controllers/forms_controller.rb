# frozen_string_literal: true

class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(params[:form])

    # binding.pry

    if ApplicationMailer.contact(@form).deliver
      flash.now[:notice] = "Thank you for your message. We will contact you soon!"
    else
      flash.now[:error] = "Cannot send message."
      render "#{params[:form][:type]}"
    end
  end
end
