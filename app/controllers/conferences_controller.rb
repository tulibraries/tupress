class ConferencesController < ApplicationController

	require 'pry'

	before_action :set_conference, only: [:edit, :update, :destroy]

	def index
		@conferences = Conference.all 
	end

	def show
    @conference = Conference.find_by id: params[:id]
  end

  # GET /links/new
  def new
    @conference = Conference.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  def create
    @conference = Conference.new(conference_params)

    respond_to do |format|
      if @conference.save
        format.html { redirect_to @conference, notice: 'Conference was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /links/1
  def update
    respond_to do |format|
      if @conference.update(conference_params)
        format.html { redirect_to @conference, notice: 'Conference was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /links/1
  def destroy
    @conference.destroy
    respond_to do |format|
      format.html { redirect_to conferences_url, notice: 'Conference was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conference
      @conference = Conference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conference_params
      params.require(:conference).permit(:month, :conference, :link, :venue,:location, :dates, :booth, :year)
    end


end