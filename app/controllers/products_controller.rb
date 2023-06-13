class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show]
  before_action :set_product, only: %i[show]

  def show
    @order_item = OrderItem.new
  end

  private

  def set_product
    @section = Section.find(params[:section_id])
    @product = Product.find(params[:id])
  end
end
