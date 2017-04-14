class SeriesController < ApplicationController
  def index
  	@series = Series.all.order(:series)
  	@books = Book.all
  end
end
