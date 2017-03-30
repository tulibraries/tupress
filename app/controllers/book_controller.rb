class BookController < ApplicationController
  def index
  	#@books = Book.all
  	if params[:titles].nil?
  		params[:titles] = 'a'
  	end
  	@books = Book.where('title LIKE ?', "#{params[:titles]}%").order(:title)
  end

  def show
  	@book = Book.find(params[:id])
  end

end
