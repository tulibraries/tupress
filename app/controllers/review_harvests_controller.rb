class ReviewHarvestsController < ApplicationController
  before_action :set_review_harvest, only: [:show, :edit, :update, :destroy]

  # GET /review_harvests
  # GET /review_harvests.json
  def index
    @review_harvests = ReviewHarvest.all
  end

  # GET /review_harvests/1
  # GET /review_harvests/1.json
  def show
    @review_harvest = ReviewHarvest.find_by id: params[:id]

      @created_reviews = @review_harvest.created_ids.map do |id|
        Book.find_by book_id: id
      end

      @deleted_reviews = @review_harvest.deleted_ids.map do |id|
        Book.find_by book_id: id
      end
  end

  # GET /review_harvests/new
  def new
    @review_harvest = ReviewHarvest.new
  end

  # GET /review_harvests/1/edit
  def edit
  end

  # POST /review_harvests
  # POST /review_harvests.json
  def create
    @review_harvest = ReviewHarvest.new(review_harvest_params)

    respond_to do |format|
      if @review_harvest.save
        format.html { redirect_to @review_harvest, notice: 'Review harvest was successfully created.' }
        format.json { render :show, status: :created, location: @review_harvest }
      else
        format.html { render :new }
        format.json { render json: @review_harvest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_harvests/1
  # PATCH/PUT /review_harvests/1.json
  def update
    respond_to do |format|
      if @review_harvest.update(review_harvest_params)
        format.html { redirect_to @review_harvest, notice: 'Review harvest was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_harvest }
      else
        format.html { render :edit }
        format.json { render json: @review_harvest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_harvests/1
  # DELETE /review_harvests/1.json
  def destroy
    @review_harvest.destroy
    respond_to do |format|
      format.html { redirect_to review_harvests_url, notice: 'Review harvest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_harvest
      @review_harvest = ReviewHarvest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_harvest_params
      params.require(:review_harvest).permit(:error_ids, :updated_ids, :created_ids)
    end
end
