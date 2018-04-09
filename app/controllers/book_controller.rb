class BookController < ApplicationController

require 'pry'

  def index
  	if params[:id].nil?
  		params[:id] = 'a'
  	end

  	@books = Book.where('sort_title LIKE ?', "#{params[:id]}%").where({ status: ["IP", "NP", "OS"] }).order(:sort_title)
    
    if params[:id] == '0'
      @books = Book.where('sort_title regexp ?', '^[0-9]+').order(:sort_title)
    end

    @pagetitle = "Titles Index"
  end

  def show
  	@book = Book.find_by book_id: params[:id]
    @reviews = Review.where('title_id = ?', "#{params[:id]}").order(weight: :desc)
    @show_status = ["IP","NP","OS"];
    @subjects = @book.subjects.each do |s|
       s
    end
    # binding.pry
    @series = @book.in_series.map do |s|
       Series.find_by series_id: s
    end
  end

  def search
    @books = Book.search(params[:q])
  end

  def bysubject
    @books = Book.where('subjects LIKE ?', "%#{params[:id]}%").where({ status: ["IP", "NP", "OS"] }).order(:sort_title)
    @subjects = Subject.find_by('subject_id = ?', "#{params[:id]}") 
  end

  def byseries
    @books = Book.where('in_series LIKE ?', "%#{params[:id]}%").where({ status: ["IP", "NP", "OS"] }).order(:sort_title)
    @series = Series.find_by('series_id = ?', "#{params[:id]}")
  end

  def studyguides
    @books = Book.where('is_guide = ?', "1").where({ status: ["IP", "NP", "OS"] }).order(:sort_title)
    @pagetitle = "Study Guides"
  end 

  def awards
    @books = Book.where('award != ?', '').where({ status: ["IP", "NP", "OS"] }).order(:sort_title)
    @years = Book.where('award != ?', '').where({ status: ["IP", "NP", "OS"] }).uniq.pluck(:award_year)
    # @subjects = Book.where('award != ?', '').where({ status: ["IP", "NP", "OS"] }).where('subjects != ?', '').pluck(:subjects).flatten.uniq.map do |subject|  subject.map { |k,v|  v["subject_title"] } end.flatten.sort
    @subjects = Book.where('award != ?', '').where({ status: ["IP", "NP", "OS"] }).where('subjects != ?', '').pluck(:subjects).flatten.uniq.sort_by { |h| h["subject"]["subject_title"] } 
    @pagetitle = "Award-Winning Books"
    # binding.pry
  end

  def awards_by_subject
    @books = Book.where('award != ?', '').where({ status: ["IP", "NP", "OS"] }).where('subjects LIKE ?', "%#{params[:id]}%").order(:sort_title)
    @subject = Subject.where("subject_id = ?", "#{params[:id]}")
    @pagetitle = "Award-Winning Books: "+@subject[0]['subject']
    # binding.pry
  end

  def awards_by_year
    @books = Book.where('award != ?', '').where({ status: ["IP", "NP", "OS"] }).where('award_year LIKE ?', "%#{params[:id]}%").order(:sort_title)
    @pagetitle = "#{params[:id]} Award-Winning Books"
  end

  def catalogs
    @catalogs = Season.all.order(:created_at)
  end

  def catalogs_by_season
    @catalog = Season.find_by code: "#{params[:code]}"
    @books = Book.where('catalog = ?', "#{params[:code]}").order(:title)
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
    params[:book].permit(  :title, :sort_title, :subtitle, :cover_image, 
      :hot, :hot_text, :news, :news_text, 
      :is_guide, :award, :award_year, :award2, :award_year2, :award3, :award_year3, :award4, :award_year4, :highlight, 
      :highlight_image)
  end

end