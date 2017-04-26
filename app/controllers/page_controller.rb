class PageController < ApplicationController


  before_action :set_page, only: [:edit, :update]

require 'pry'

  def index
    @highlights = Book.where(highlight: 1)
    @hot_books = Book.where(hot: 1).take(5)
    @news_books = Book.where(news: 1).take(3)
    @adoptions = Book.where('course_adoption = ?', 'Y')
    @feed = Feed.find(1)
    @entries = @feed.entries.order('published desc')
  end
  def contact
  end
  def order
    @page = Page.find_by(id: params[:id])
  end
  def payment
  end
  def copypolicy
  end
  def sales_reps
  end
  def reviews
  	@reviews = Review.all
  end
  def conferences
    @conferences = Conference.all.sort_by {|conference| conference.month}
    @conferences_month = @conferences.group_by {|t| t.month}
    
    # binding.pry
  end
  def review_copy
  end
  def press_info
    @page = Page.find_by(id: params[:id])
    @action = params[:action]
  end
  def people
    @people_by_dept = Person.all.group_by {|t| t.department}
  end
  def rights
    @page = Page.find_by(id: params[:id])
    @action = params[:action]
  end
  def foreign_rights
    @agencies_catchall = Agency.find_by(region: 'All Other Territories')
    @agencies_by_region = Agency.all.group_by {|t| t.region}
    @agencies_final = @agencies_by_region.map {|region_string, agencies| [agencies, Region.find_by(region: region_string)]}
  end
  def submissions
    @page = Page.find_by(id: params[:id])
  end
  def university_presses
    @page = Page.find_by(id: params[:id])
  end
  def faq
    @faqs = Faq.all
  end
  def copyright
  end

  def show
    @pages = Page.all
  end

  # GET /links/new
  def new
    @page = Page.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /links/1
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /links/1
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:name, :content, :content2)
    end


end