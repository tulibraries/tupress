class BookController < ApplicationController
  def index
  	#@books = Book.all
  	if params[:id].nil?
  		params[:id] = 'a'
  	end
  	@books = Book.where('title LIKE ?', "#{params[:id]}%").order(:title)
    @pagetitle = "Titles Index"
  end

  def show
  	@book = Book.find_by book_id: "#{params[:id]}"
    @subjects = @book.subjects.map do |s|
       Subject.find_by subject_id: s
    end
    @series = @book.in_series.map do |s|
       Series.find_by series_id: s
    end
  end

  def bysubject
    @books = Book.where('subjects LIKE ?', "%#{params[:id]}%").order(:title)
  end

  def byseries
    @books = Book.where('in_series LIKE ?', "%#{params[:id]}%").order(:title)
    @series = Series.find_by('series_id = ?', "#{params[:id]}")
  end

  def studyguides
    @books = Book.where('is_guide = ?', "1").order(:title)
    @pagetitle = "Study Guides"
  end 

  def awards
    @books = Book.where('award IS NOT NULL').order(:title)
    @pagetitle = "Award-Winning Books"
  end

end