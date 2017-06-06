class RepsController < ApplicationController
  before_action :set_rep, only: [:show, :edit, :update, :destroy]

  def sales_reps
    @reps = Rep.all 
  end

  # GET /reps
  # GET /reps.json
  def index
    @reps = Rep.all
  end

  # GET /reps/1
  def show
  end

  # GET /reps/new
  def new
    @rep = Rep.new
    @regions = Region.all
  end

  # GET /reps/1/edit
  def edit
    @regions = Region.all
  end

  # POST /reps
  def create
    @rep = Rep.new(rep_params)
    respond_to do |format|
      if @rep.save
        format.html { redirect_to @rep, notice: 'Rep was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /reps/1
  def update
    respond_to do |format|
      if @rep.update(rep_params)
        format.html { redirect_to @rep, notice: 'Rep was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /reps/1
  def destroy
    @rep.destroy
    respond_to do |format|
      format.html { redirect_to reps_url, notice: 'Rep was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rep
      @rep = Rep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rep_params
      params.require(:rep).permit(:company, :name, :address, :address2, :address3, :phone, :fax, :email, :website, :region, :coverage)
    end
end
