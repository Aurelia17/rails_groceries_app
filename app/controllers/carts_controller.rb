class CartsController < ApplicationController
  before_action :set_cart, only: %i[show edit update confirmed]
  def show
    @order_items = OrderItem.all.where(cart_id: @cart.id)
  end

  def edit
    @product = Product.find(params[:product_id])
  end

  def update
  end

  def confirmed
    if @cart.is_confirmed?
      @order = Order.new
      @cart.destroy
      redirect_to order_path(@order)
    end
  end

  private

  def set_cart
    @cart = Cart.find_by(id: cookies[:cart_id])
  end
end
