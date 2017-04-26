class LinksController < ApplicationController
  before_action :set_link, only: [:edit, :update, :destroy]

  # GET /links
  def index
    @links = Link.all
  end

  # GET /links/1
  def show
    @links = Link.all
  end

  # GET /links/new
  def new
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
    @links = Link.all
  end

  # POST /links
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /links/1
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /links/1
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:title, :link)
    end
end
