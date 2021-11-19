class AgenciesController < ApplicationController

	before_action :set_agency, only: [:edit, :update, :destroy]

	def index
		@agencies = Agency.all 
    respond_to do |format|
      format.html
      format.json { render json: @agencies }
    end
	end

	def show
    @agencies = Agency.all
  end

  # GET /links/new
  def new
    @agency = Agency.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  def create
    @agency = Agency.new(agency_params)

    respond_to do |format|
      if @agency.save
        format.html { redirect_to @agency, notice: 'Agency was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /links/1
  def update
    respond_to do |format|
      if @agency.update(agency_params)
        format.html { redirect_to @agency, notice: 'Agency was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /links/1
  def destroy
    @agency.destroy
    respond_to do |format|
      format.html { redirect_to agencies_url, notice: 'Agency was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agency
      @agency = Agency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agency_params
      params.require(:agency).permit(:title, :contact, :address1, :address2, 
      																	:address3, :city, :country, :phone, :fax, 
      																	:email, :website, :region
      																	)
    end


end