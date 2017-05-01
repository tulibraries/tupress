class BookController < ApplicationController

def index
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


  def edit   
    @book = Book.find_by id: "#{params[:id]}"
  end

  def update
    @book = Book.find_by id: "#{params[:id]}"
    if @book.update!(book_params) 
      flash[:success] = "Book was successfully updated."
      redirect_to :controller=>'book', :action=>'show', :id=>@book.book_id
    else
      flash[:error] = "Book was successfully updated."
      render action: :edit
    end
  end

 private

  def book_params
    params[:book].permit({:author=>[]}, :title, {:in_series=>[]}, {:subjects=>[]})
  end

end