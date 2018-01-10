class OabooksController < ApplicationController
  before_action :set_oabook, only: [:show, :edit, :update, :destroy, :epub]

  # GET /oabooks
  # GET /oabooks.json
  def index
    @oabooks = Oabook.all
  end

  # GET /oabooks/1
  # GET /oabooks/1.json
  def show
  end

  def epub
    render layout: false
  end

  # GET /oabooks/new
  def new
    @oabook = Oabook.new
  end

  # GET /oabooks/1/edit
  def edit
  end

  # POST /oabooks
  # POST /oabooks.json
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

  # PATCH/PUT /oabooks/1
  # PATCH/PUT /oabooks/1.json
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

  # DELETE /oabooks/1
  # DELETE /oabooks/1.json
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
      params.fetch(:oabook, {})
    end
end
