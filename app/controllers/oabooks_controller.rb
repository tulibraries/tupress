class OabooksController < ApplicationController
  before_action :set_oabook, only: [:show, :edit, :update, :destroy, :epub]

  def index
    @oabooks = Oabook.all
  end

  def labor_studies
    @oabooks = Oabook.where('collection = ?', 'Labor Studies').order(:title)
  end
  
  def north_broad_press
    @oabooks = Oabook.where('collection = ?', 'North Broad Press').order(:title)
  end

  def show
  end

  def epub
    render layout: false
  end

  def new
    @oabook = Oabook.new
  end

  def edit
  end

  def create
    @oabook = Oabook.new(oabook_params)

    respond_to do |format|
      if @oabook.save
        format.html { redirect_to @oabook, notice: 'Oabook was successfully created.' }
        format.json { render :show, status: :created, location: @oabook }
      else
        format.html { render :new }
        format.json { render json: @oabook.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @oabook.update(oabook_params)
        format.html { redirect_to @oabook, notice: 'Oabook was successfully updated.' }
        format.json { render :show, status: :ok, location: @oabook }
      else
        format.html { render :edit }
        format.json { render json: @oabook.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @oabook.destroy
    respond_to do |format|
      format.html { redirect_to oabooks_url, notice: 'Oabook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oabook
      @oabook = Oabook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oabook_params
      params.require(:oabook).permit(:title, :subtitle,:edition,:author,:supplemental,:description,:isbn,:collection,:epub,:pdf,:mobi)
    end
end
