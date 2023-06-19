class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show]
  before_action :set_product, only: %i[show]

  def index
    if params[:query].present?
      @products = Product.global_search(params[:query])
    else
      @products = Product.all
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "products/list", locals: {products: @products}, formats: [:html] }
    end
  end

  def show
    @order_item = OrderItem.new
  end

  private

  def set_product
    @section = Section.find(params[:section_id])
    @product = Product.find(params[:id])
  end
end
