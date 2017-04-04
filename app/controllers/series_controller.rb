class SeriesController < ApplicationController
  def index
  	@series = Series.all.order(:series)
  end
end
