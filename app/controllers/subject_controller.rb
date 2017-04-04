class SubjectController < ApplicationController
  def index
  	@subjects = Subject.all.order(:subject)
  end
end
