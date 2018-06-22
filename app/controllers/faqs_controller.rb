class FaqsController < ApplicationController
  before_action :set_faq, only: [:show, :edit, :update, :destroy]

  # GET /faqs
  def index
    @faqs = Faq.all
  end

  # GET /faqs/1
  def show
    @faq = Faq.find_by id: params[:id]
  end

  # GET /faqs/new
  def new
    @faq = Faq.new
  end

  # GET /faqs/1/edit
  def edit
  end

  # POST /faqs
  def create
    @faq = Faq.new(faq_params)

    respond_to do |format|
      if @faq.save
        format.html { redirect_to faqs_url, notice: 'Faq was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /faqs/1
  def update
    respond_to do |format|
      if @faq.update(faq_params)
        format.html { redirect_to faqs_url, notice: 'Faq was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /faqs/1
  def destroy
    @faq.destroy
    respond_to do |format|
      format.html { redirect_to faqs_url, notice: 'Faq was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq
      @faq = Faq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faq_params
      params.require(:faq).permit(:q, :a)
    end
end
