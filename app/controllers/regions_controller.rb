class RegionsController < ActionController::Base
	before_action :set_region, only: [:show, :edit, :update, :destroy]

  # GET /faqs
  # GET /faqs.json
  def index
    @regions = Region.all
  end

  # GET /faqs/1
  # GET /faqs/1.json
  def show
  end

  # GET /faqs/new
  def new
    @region = Region.new
  end

  # GET /faqs/1/edit
  def edit
  end

  # POST /faqs
  # POST /faqs.json
  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to @region, notice: 'Region was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /faqs/1
  # PATCH/PUT /faqs/1.json
  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to @region, notice: 'Region was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /faqs/1
  # DELETE /faqs/1.json
  def destroy
    @faq.destroy
    respond_to do |format|
      format.html { redirect_to faqs_url, notice: 'Region was successfully destroyed.' }
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
