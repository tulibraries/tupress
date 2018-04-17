class HarvestsController < ApplicationController
  before_action :set_harvest, only: [:show, :edit, :update, :destroy]

  # GET /harvests
  # GET /harvests.json
  def index
    @harvests = Harvest.all
  end

  # GET /harvests/1
  # GET /harvests/1.json
  def show
    @harvest = Harvest.find_by id: params[:id]

    @created_books = @harvest.created_ids.map do |id|
      Book.find_by book_id: id
    end

    @updated_books = @harvest.updated_ids.map do |id|
      Book.find_by book_id: id
    end
  end

  # GET /harvests/new
  def new
    @harvest = Harvest.new
  end

  # GET /harvests/1/edit
  def edit
  end

  # POST /harvests
  # POST /harvests.json
  def create
    @harvest = Harvest.new(harvest_params)

    respond_to do |format|
      if @harvest.save
        format.html { redirect_to @harvest, notice: 'Harvest was successfully created.' }
        format.json { render :show, status: :created, location: @harvest }
      else
        format.html { render :new }
        format.json { render json: @harvest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harvests/1
  # PATCH/PUT /harvests/1.json
  def update
    respond_to do |format|
      if @harvest.update(harvest_params)
        format.html { redirect_to @harvest, notice: 'Harvest was successfully updated.' }
        format.json { render :show, status: :ok, location: @harvest }
      else
        format.html { render :edit }
        format.json { render json: @harvest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harvests/1
  # DELETE /harvests/1.json
  def destroy
    @harvest.destroy
    respond_to do |format|
      format.html { redirect_to harvests_url, notice: 'Harvest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvest
      @harvest = Harvest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harvest_params
      params.require(:harvest).permit(:updated_ids, :created_ids, :error_ids)
    end
end
