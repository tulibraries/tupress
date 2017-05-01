class RegionsController < ApplicationController
	  before_action :set_region, only: [:show, :edit, :update, :destroy]

  # GET /feeds
  def index
    @regions = Region.all
  end

  # GET /feeds/1
  def show
  end

  # GET /feeds/new
  def new
    @region = Region.new
  end

  # GET /feeds/1/edit
  def edit
  end

  # POST /feeds
  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to @region, notice: 'region was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /feeds/1
  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to @region, notice: 'region was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /feeds/1
  def destroy
    @region.destroy
    respond_to do |format|
      format.html { redirect_to regions_url, notice: 'region was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_params
      params.require(:region).permit(:region, :rights)
    end
end
