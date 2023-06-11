class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show]
  before_action :set_product, only: %i[show]

  def show
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
  end

  private

  def set_product
    @section = Section.find(params[:section_id])
    @product = Product.find(params[:section_id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :quantity)
  end
end
