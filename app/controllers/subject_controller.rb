class SubjectController < ApplicationController
  def index
  	@subjects = Subject.all.order(:subject)
  	@books = Book.where({ status: ["NP","IP","OS","OP"] }).order(:sort_title)
  end
end
