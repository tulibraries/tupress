class PromotionsController < ApplicationController
  before_action :set_promotion, only: [:show]

  # GET /promotions
  # GET /promotions.json
  def index
    @promotions = Promotion.where(active: true)
  end

  # GET /promotions/1
  # GET /promotions/1.json
  def show
    @books = @promotion.books.order(:sort_title)
    @subjects = @promotion.books.map{ |book|  book.subjects }
    # binding.pry

    unless params[:subject].nil?
      @books = @promotion.books.where('subjects LIKE ?', "%#{params[:subject]}%")
                  .order(:sort_title)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promotion_params
      params.require(:promotion).permit(:title, :pdf, :intro_text, :active, :pdf_display_name)
    end
end
