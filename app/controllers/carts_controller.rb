class CartsController < ApplicationController
  before_action :set_cart, only: %i[show edit update confirmed]
  def show
    @order_items = OrderItem.all.where(cart_id: @cart.id)
    @total = all_total
  end

  def edit
    @product = Product.find(params[:product_id])
  end

  def update
  end

  def confirmation
    @total = all_total
    if @cart.is_confirmed?
      @order = Order.new
      @cart.destroy
      redirect_to order_path(@order)
    end
  end

  def all_total
    total_all = 0
    @order_items = OrderItem.all.where(cart_id: @cart.id)
    @order_items.each do |order_item|
      total_all += order_item.total_price
    end
    return total_all.to_i
  end


  private

  def set_cart
    @cart = Cart.find_by(id: cookies[:cart_id])
  end
end
