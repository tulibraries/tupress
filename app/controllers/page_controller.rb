class PageController < ApplicationController
  def index
  end
  def contact
  end
  def order
  end
  def payment
  end
  def copypolicy
  end
  def sales_reps
  end
  def reviews
  	@reviews = Review.all
  end
  def conferences
    @conferences = Conference.all
    @conferences_month = @conferences.group_by {|t| t.month[0]}
  end
end
