class SeriesController < ApplicationController
  def index
  	@series = Series.all.order(:series_name)
  	@books = Book.where({ status: ["NP","IP","OS","OP"] }).order(:sort_title)
  end
end
