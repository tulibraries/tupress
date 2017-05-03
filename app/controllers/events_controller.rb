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
    request_year = params[:year]
    request_year ? year = request_year : year = date.year
    @january_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '01').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @february_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '02').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC') 
    @march_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '03').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @april_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '04').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @may_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '05').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @june_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '06').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @july_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '07').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @august_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '08').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @september_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '09').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @october_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '10').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @november_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '11').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    @december_events = Event.where("CAST(strftime('%m', startdate) as INT) = ?", '12').where("CAST(strftime('%Y', startdate) as INT) = ?", year).order('startdate ASC')
    case params[:month]
      when 'january' then @events = @january_events
      when 'february' then @events = @february_events
      when 'march' then @events = @march_events
      when 'april' then @events = @april_events
      when 'may' then @events = @may_events
      when 'june' then @events = @june_events
      when 'july' then @events = @july_events
      when 'august' then @events = @august_events
      when 'september' then @events = @september_events
      when 'october' then @events = @october_events
      when 'november' then @events = @november_events
      when 'december' then @events = @december_events
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
