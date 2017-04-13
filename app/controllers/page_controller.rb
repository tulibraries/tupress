class PageController < ApplicationController

require 'pry'

  def index
    @hot_books = Book.where(hot: 1).take(4)
    @news_books = Book.where(news: 1).take(3)
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
  def review_copy
  end
  def press_info
  end
  def people
    @people_by_dept = Person.all.group_by {|t| t.department}
  end
  def rights
  end
  def foreign_rights
    @agencies_catchall = Agency.find_by(region: 'All Other Territories')
    # binding.pry
    # Book.where(id: 1).includes(:articles).explain
    @agencies_by_region = Agency.all.group_by {|t| t.region}
    @agencies_final = @agencies_by_region.map {|region_string, agencies| [agencies, Region.find_by(region: region_string)]}
  end
  def submissions
  end
  def university_presses
  end
  def faq
  end
  def links
  end
end