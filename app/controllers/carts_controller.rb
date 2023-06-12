class CartsController < ApplicationController
  before_action :set_cart, only: %i[show edit update destroy]
  def show
    @cart = current_user.cart
    @cart_items = @cart.cart_items.includes(:product)
  end

  def edit
    @cart.user = current_user
    product = Product.find(params[:product_id])
    cart_item = @cart.cart_items.find_or_initialize_by(product: product)
    cart_item.quantity += 1
    cart_item.save
    redirect_to cart_path
  end

  def update
    @cart = current_user.cart
    cart_item = @cart.cart_items.find(params[:id])
    cart_item.update(quantity: params[:quantity])
    redirect_to cart_path
  end

  def destroy
    @cart = current_user.cart
    cart_item = @cart.cart_items.find(params[:id])
    cart_item.destroy
    redirect_to cart_path
  end

  private

  def set_cart
    @cart = Cart.find(params[:cart_id])
  end
end
