class SubjectController < ApplicationController
  def index
  	@subjects = Subject.all.order(:subject)
  	@books = Book.all
  end
end
