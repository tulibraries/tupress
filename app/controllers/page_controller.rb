class PageController < ApplicationController

require 'pry'

  def index
    @highlights = Book.where(highlight: 1)
    @hot_books = Book.where(hot: 1).take(5)
    @news_books = Book.where(news: 1).take(3)
    @adoptions = Book.where('course_adoption = ?', 'Y')
    @feed = Feed.find(1)
    @entries = @feed.entries.order('published desc')
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
  def copyright
  end
end