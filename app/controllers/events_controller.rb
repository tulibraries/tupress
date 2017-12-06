class EventsController < ApplicationController

  # scope :group_by_month,   -> { group("date_trunc('month', startdate) ") }
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  require 'pry'

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  def calendar
    date = Time.now

    params[:year] ? year = params[:year] : (year = date.year; params[:year] = date.year;)
    params[:month] ? month = params[:month] : params[:month] = date.strftime('%0m')
    # binding.pry
    @january_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '01').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @february_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '02').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC') 
    @march_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '03').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @april_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '04').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @may_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '5').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @june_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '06').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @july_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '07').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @august_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '08').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @september_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '09').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @october_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '10').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @november_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '11').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')
    @december_events = Event.where("DATE_FORMAT(startdate, '%m') = ?", '12').where("DATE_FORMAT(startdate, '%Y') = ?", year).order('startdate ASC')

    case params[:month]
      when '01' then @events = @january_events
      when '02' then @events = @february_events
      when '03' then @events = @march_events
      when '04' then @events = @april_events
      when '05' then @events = @may_events
      when '06' then @events = @june_events
      when '07' then @events = @july_events
      when '08' then @events = @august_events
      when '09' then @events = @september_events
      when '10' then @events = @october_events
      when '11' then @events = @november_events
      when '12' then @events = @december_events
    end
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:startdate, :enddate, :description, :where, :time, :endtime, :timezone)
    end
end
