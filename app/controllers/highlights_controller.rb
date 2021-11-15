class HighlightsController < ApplicationController

  def index
    @highlights = Highlight.all
            
    respond_to do |format|
      format.html 
      format.json { render json: @highlights }
     end
  end

end
