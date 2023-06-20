class RatingsController < ApplicationController
  before_action :set_product, only: %i[new create]
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.user = current_user
    @rating.product = @product
    if @rating.save
      redirect_to section_product_path(@section, @product)
    else
      render :new
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:rate)
  end

  def set_product
    @product = Product.find(params[:product_id])
    section_id = @product.section_id
    @section = Section.find(section_id)
  end
end
