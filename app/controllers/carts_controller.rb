class CartsController < ApplicationController
  before_action :set_outfit, only: %i[show edit update]
  def show; end

  def edit; end

  def update
    if @cart.update(outfit_params)
      redirect_to cart_path(@cart)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_cart
    @cart = Cart.find(params[:cart_id])
  end

  def cart_params
    params.require(:cart).permit(:total_price)
  end
end
