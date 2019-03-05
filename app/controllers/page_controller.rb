class PageController < ApplicationController
  
  before_action :set_page, only: [:edit, :update]

require 'pry'

  def index
    @highlights = Highlight.where(homepage: 1).order(created_at: :desc)
    @hot_books = Book.where(hot: 1).take(4).sort_by{ |w| w.hotweight }
    @news_books = Book.where(news: 1).take(4).sort_by{ |w| w.newsweight }
    @adoptions = Book.where(course_adoptions: 1)
    # @events = Event.where(news: 1).take(2).sort_by{ |w| w.weight }
    @events = Event.where(news: 1).take(1)
    @freeforms = NewsItem.where(homepage: 1).take(1)
    @feed = Feed.find(1)
    @entries = @feed.entries.order(published: :desc)
    @catalog = Season.where.not(suppress: 1).order(created_at: :desc).first
    @homepage_subject = Brochure.where(promoted_to_homepage: 1).order(updated_at: :desc).first
  end
  def order
    @page = Page.find_by(id: params[:id])
  end
  def payment
    @page = Page.find_by(id: params[:id])
  end
  def reviews
    @reviews = Review.all.sort_by {|review| review.created_at}
    @reviews_date = @reviews.group_by {|t| t.created_at.strftime("%m/%d/%Y")}
  end
  def conferences
    @conferences = Conference.where(year: Time.new.year.to_s).sort_by {|conference| conference.month}
    @conferences_month = @conferences.group_by {|t| t.month}
    @conferences_by_year = Conference.where(year: (Time.new.year+1).to_s).sort_by {|conference| conference.month}
    @conferences_year = @conferences_by_year.group_by {|t| t.month}
  end
  def downloads
    @documents_by_dept = Document.all.group_by {|t| t.department}
    @documents_by_contact = @documents_by_dept.map {|dept_name, documents| [documents, Person.find_by(document_contact: dept_name)]}
  end
  def press_info
    @page = Page.find_by(id: params[:id])
  end
  def people
    @people_by_dept = Person.all.group_by {|t| t.department}
  end
  def rights
    @page = Page.find_by(id: params[:id])
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
    @page = Page.find_by(id: params[:id])
  end
  def north_broad_press_proposals
    @page = Page.find_by(id: params[:id])
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
      params.require(:page).permit(:name, :content, :content2, :file, :path)
    end


end