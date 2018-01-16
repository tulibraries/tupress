class BookController < ApplicationController

require 'pry'

  def index
  	if params[:id].nil?
  		params[:id] = 'a'
  	end
  	@books = Book.where('title LIKE ?', "#{params[:id]}%").where("status = ?", "IP").order(:title)
    @pagetitle = "Titles Index"
  end

  def show
  	@book = Book.find_by book_id: params[:id]
    @subjects = @book.subjects.each do |s|
       s
    end
    # binding.pry
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
    @books = Book.where('award != ?', '').order(:title)
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
    @book = Book.find_by book_id: params[:id]
  end

  def update
    @book = Book.find_by book_id: params[:id]
    if @book.update!(book_params) 
      flash[:success] = "Book was successfully updated."
      redirect_to :controller=>'book', :action=>'show', :id=>@book.book_id
    else
      flash[:error] = "Book was successfully updated."
      render action: :edit
    end
  end
  # GET /links/new
  def new
    @book = Book.new
  end

  # POST /links
  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to :controller=>'book', :action=>'show', :id=>@book.book_id, notice: 'Book was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

 private

  def book_params
    params[:book].permit(  :title, :subtitle, :book_id,  
      :hot, :hot_text, :news, :news_text, :intro, :blurb,
      :excerpt, :is_guide, :cover_image, :format, :isbn,  :description,
      :contents,  :award, :award_year, :catalog, 
      :course_adoption, :highlight, :highlight_image,  
      :subjects=>[],:binding=>[],:reviews=>[],:about_author=>[],:author=>[],:in_series=>[])
  end

end