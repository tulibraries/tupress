class BrochuresController < ApplicationController
  
  def index
    @brochures = Brochure.all
    
    respond_to do |format|
      format.html
      format.json { render json: @brochures }
    end
  end
end
