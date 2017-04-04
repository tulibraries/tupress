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
    @january_conferences = Conference.where('month = ?', "January")
    @february_conferences = Conference.where('month = ?', "February")
    @march_conferences = Conference.where('month = ?', "March")
    @april_conferences = Conference.where('month = ?', "April")
    @may_conferences = Conference.where('month = ?', "May")
    @june_conferences = Conference.where('month = ?', "June")
    @july_conferences = Conference.where('month = ?', "July")
    @august_conferences = Conference.where('month = ?', "August")
    @september_conferences = Conference.where('month = ?', "September")
    @october_conferences = Conference.where('month = ?', "October")
    @november_conferences = Conference.where('month = ?', "November")
    @december_conferences = Conference.where('month = ?', "December")
  end
end
