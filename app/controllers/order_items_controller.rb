class OrderItemsController < ApplicationController
  before_action :set_product, only: %i[new show create edit update destroy]
  before_action :set_cart, only: %i[index show new create edit update destroy]
  before_action :set_order_item, only: %i[show edit update destroy]

  def index
    @order_items = Order_item.all
  end

  def show; end

  def new
    @order_item = OrderItem.new
  end

  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.product = @product
    @order_item.cart = @cart
    @order_item.total_price = total_price(@order_item)
    if @order_item.save
      redirect_to section_product_path
    end
  end

  def destroy
    @order_item.destroy
    redirect_to cart_path
  end

  private

  def set_order_item
    @order_item = Order_item.find(params[:order_item_id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_cart
    @cart = Cart.find(params[:cart_id])
  end

  def order_item_params
    params.require(:order_item).permit(:quantity, :total_price)
  end

  def total_price(order_item)
    quantity = order_item.quantity
    unit_price = order_item.product.price
    total_price = quantity * unit_price
    return total_price
  end
end
