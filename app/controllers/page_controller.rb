class PageController < ApplicationController

require 'pry'

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
    @agencies_by_region = Agency.all.group_by {|t| t.region}
    @agencies_final = @agencies_by_region.map {|region_string, agencies| [agencies, Region.find_by(region: region_string)]}
  end
  def submissions
  end
  def university_presses
  end
end