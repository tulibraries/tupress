class BookController < ApplicationController

  def index 

    if params[:id].nil?
      params[:id] = 'a'
    end
    
    @all_books = Book.where({ status: ["NP", "IP", "OS","OP"] })
    @books = Book.where('sort_title LIKE ?', "#{params[:id]}%").where({ status: ["NP", "IP", "OS","OP"] }).order(:sort_title)
    
    if params[:id] == '0'
      @books = Book.where('sort_title regexp ?', '^[0-9]+').where({ status: ["NP", "IP", "OS","OP"] }).order(:sort_title)
    end

    @pagetitle = "Titles Index"
    @show_status = ["NP", "IP", "OS","OP"]

    respond_to do |format|
      format.html
      format.json { render json: @all_books }
    end
  end

  def suppressed
    @books = Book.where(status: "X")
    respond_to do |format|
      format.json { render json: @books }
    end
  end

  def byauthor
    if params[:id].nil?
      params[:id] = 'a'
    end
    @books = Book.where('author_last LIKE ?', "#{params[:id]}%").where({ status: ["NP", "IP", "OS","OP"] }).order(:author_last)
    @pagetitle = "Titles By Author Index"
    @show_status = ["NP", "IP","OS","OP"]
  end

  def show
  	@book = Book.find_by book_id: params[:id]
    @reviews = Review.where('title_id = ?', "#{params[:id]}").order(weight: :desc)
    @show_status = ["NP", "IP","OS","OP"]
    @subjects = @book.subjects.each do |s|
       s
    end
    @series = @book.in_series.map do |s|
       Series.find_by series_code: s
    end
    @ordered_subjects = []
    @ordered_subjects << @book.subject1
    @ordered_subjects << @book.subject2
    @ordered_subjects << @book.subject3
    @ordered_subjects = @ordered_subjects.map do |s|
      Subject.find_by subject_id: s
    end
    @formats = @book.binding
  end

  def bysubject
    @subjects = Subject.find_by('subject_id = ?', "#{params[:id]}") 
    @books = Book.where('subjects LIKE ?', "%#{params[:id]}%").where({ status: ["NP", "IP", "OS","OP"] }).order(:sort_title)
    @show_status = ["NP", "IP","OS","OP"]
    @brochures = Brochure.where(subject_id: params[:id]).where(promoted_to_subject: true)
  end

  def byseries
    @books = Book.where('in_series LIKE ?', "%#{params[:id]}%").where({ status: ["NP", "IP", "OS","OP"] }).order(:sort_title)
    @series = Series.find_by('series_code = ?', "#{params[:id]}")
    @show_status = ["NP", "IP","OS","OP"]
  end

  def studyguides
    @books = Book.where('is_guide != ?', '').where({ status: ["NP", "IP", "OS","OP"] }).order(:sort_title)
    @pagetitle = "Study Guides"
    @show_status = ["NP", "IP","OS","OP"]
  end 

  def studyguide
    @book = Book.find_by('book_id = ?', "#{params[:id]}")
  end

  def course_adoptions
    @books = Book.where('course_adoptions = ?', 1)
    @pagetitle = "Books for Course Adoption"
    @show_status = ["NP", "IP","OS","OP"]
  end 

  def awards
    @books = Book.where('award != ?', '').where({ status: ["NP", "IP", "OS","OP"] }).order(:sort_title)
    @years = Book.where('award != ?', '').where({ status: ["NP", "IP", "OS","OP"] }).distinct.pluck( :award_year, :award_year2, :award_year3, :award_year4).map{|years| years.join(",")}.join(",")
    @years2 = @years.split(/,/).uniq!
    @subjects = Book.where('award != ?', '').where({ status: ["NP", "IP", "OS","OP"] }).where.not(subjects: nil).pluck(:subjects).flatten.uniq.sort_by { |h| h["subject"][1] } 
    @pagetitle = "Award-Winning Books"
    @show_status = ["NP", "IP","OS","OP"]
  end

  def awards_by_subject
    @books = Book.where('award != ?', '').where({ status: ["NP", "IP", "OS","OP"] }).where('subjects LIKE ?', "%#{params[:id]}%").order(:sort_title)
    @subject = Subject.where("subject_id = ?", "#{params[:id]}")
    @pagetitle = "Award-Winning Books: "+@subject[0]['subject']
    @show_status = ["NP", "IP","OS","OP"]
  end

  def awards_by_year
    @books = Book.where('award != ?', '').where({ status: ["NP", "IP", "OS","OP"] }).where('award_year LIKE ?', "%#{params[:id]}%").or(Book.where('award_year2 LIKE ?', "%#{params[:id]}%")).or(Book.where('award_year3 LIKE ?', "%#{params[:id]}%")).or(Book.where('award_year4 LIKE ?', "%#{params[:id]}%")).order(:sort_title)
    @pagetitle = "#{params[:id]} Award-Winning Books"
    @show_status = ["NP", "IP","OS","OP"]
  end

  def catalogs
    @catalogs = Season.where("suppress != ?", "").order(created_at: :desc)
    @show_status = ["NP", "IP","OS","OP"]
  end

  def catalogs_by_season
    @catalog = Season.find_by code: "#{params[:code]}"
    @books = Book.where('catalog = ?', "#{params[:code]}").where({ status: ["NP","IP","OS","OP"] }).order(:sort_title)
    @show_status = ["NP", "IP","OS","OP"]    
    @brochures = Brochure.where(catalog_code: params[:code]).where(promoted_to_subject: true)
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
    params[:book].permit(:title, :sort_title, :subtitle, :cover_image, :hot, :hot_text, :news, 
      :news_text, :excerpt, :excerpt_text, :is_guide, :award, :award_year, :award2, :award_year2, 
      :award3, :award_year3, :award4, :award_year4, :highlight, :highlight_image, :supplement, 
      :edition, :is_guide_text, :suggested_reading, :promotion_ids)
  end

end