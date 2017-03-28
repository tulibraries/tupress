class BookController < ApplicationController
  def index
  	@books = Book.all
  end
end
