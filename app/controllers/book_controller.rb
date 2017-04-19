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
    @subjects = Subject.find_by('subject_id = ?', "#{params[:id]}") 
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

  def catalogs
    @catalogs = Catalog.all.order(:created_at)
  end

  def catalogs_by_season
    @catalog = Catalog.find_by id: "#{params[:id]}"
    @books = Book.where('catalog LIKE ?', "#{params[:id]}").order(:title)
  end


  
before_action :set_book, only: [:edit, :update]

  def edit
    @book
  end

  def update
    if @book.update_attributes(book_params)
      flash[:notice] = "Book was successfully updated."
    else 
      flash[:notice] = "Book was NOT successfully updated."
    end

    redirect_to controller: :book, action: :show, id: @book.book_id
  end

  private

  def set_book
    @book = Book.find_by book_id: "#{params[:book_id]}"

  end

  def book_params
    params[:book].permit(:title, :author)
  end

end