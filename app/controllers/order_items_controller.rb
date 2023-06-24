class OrderItemsController < ApplicationController
  before_action :set_product, only: %i[new create edit update]
  before_action :set_order_item, only: %i[]
  skip_before_action :authenticate_user!, only: %i[new create edit update destroy]

  def new
    @order_item = OrderItem.new
  end

  def create
    @order_item = OrderItem.new(order_item_params)
    if @order_item.save
      flash[:notice] = 'Item added to cart.'
      redirect_to products_path
    end
  end

  def edit
    @order_item = OrderItem.find(params[:id])
  end

  def update
    @order_item = OrderItem.find(params[:id])
    if @order_item.update(order_item_params)
      flash[:notice] = 'Item quantity updated.'
      redirect_to section_product_path(@order_item)
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    flash[:notice] = 'Item removed from cart.'
    redirect_to section_product_path(@order_item), status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:order_item][:product_id])
    @section = Section.find(params[:order_item][:section_id])
  end

  def set_order_item
    @order_item = OrderItem.find(params[:order_item_id])
  end

  def order_item_params
    params.require(:order_item).permit(:quantity, :total_price, :product_id, :cart_id)
  end
end
