class CartsController < ApplicationController
  before_action :set_outfit, only: %i[show edit update]
  def show
    @cart = current_user.cart
    @cart_items = @cart.cart_items.includes(:product)
  end

  def add_item
    @cart = current_user.cart
    product = Product.find(params[:product_id])
    cart_item = @cart.cart_items.find_or_initialize_by(product: product)
    cart_item.quantity += 1
    cart_item.save
    redirect_to cart_path
  end

  def update_item_quantity
    @cart = current_user.cart
    cart_item = @cart.cart_items.find(params[:id])
    cart_item.update(quantity: params[:quantity])
    redirect_to cart_path
  end

  def remove_item
    @cart = current_user.cart
    cart_item = @cart.cart_items.find(params[:id])
    cart_item.destroy
    redirect_to cart_path
  end
end
