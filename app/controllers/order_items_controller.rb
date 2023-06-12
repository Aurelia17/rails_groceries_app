class OrderItemsController < ApplicationController
  before_action :set_outfit, only: %i[new create edit update destroy]
  before_action :set_order_item, only: %i[edit update destroy]
  skip_before_action :authenticate_user!, only: %i[new create edit update]

  def new
    @order_item = OrderItem.new
  end

  def create
    @order_item = Order_item.new(order_item_params)
    @order_item.product = @product
    if @order_item.save
      flash[:notice] = 'Item added to order.'
      redirect_to section_product_path(@order_item)
    end
  end

  def edit; end

  def update
    if @order_item = Order_item.update(order_item_params)
      flash[:notice] = 'Order item quantity updated.'
      redirect_to section_product_path(@order_item)
    end
  end

  def destroy
    @order_item.destroy
    flash[:notice] = 'Item removed from order.'
    redirect_to section_product_path(@order_item), status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_order_item
    @order_item = Order_item.find(params[:order_item_id])
  end

  def order_item_params
    params.require(:order_item).permit(:quantity, :total_price)
  end
end
