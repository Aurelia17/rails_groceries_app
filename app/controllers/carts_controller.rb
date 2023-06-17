class CartsController < ApplicationController
  before_action :set_cart, only: %i[show ]
  skip_before_action :authenticate_user!, only: %i[show edit update]

  def show
    @order_items = OrderItem.all.where(cart_id: @cart.id)
    @total = all_total
    @cart.total_price = all_total
  end

  def edit
    @product = Product.find(params[:product_id])
  end

  def update
    @order_items = OrderItem.where(cart_id: @cart.id)
    @total = all_total
    if @cart.update(cart_params)
      flash[:notice] = 'Order created !'
      if @cart.is_confirmed?
        if current_user.orders.last
          oder_number = current_user.orders.last.oder_number + 1
        else
          oder_number = 1
        end
        @order = Order.create(total_price: all_total, oder_number: oder_number, user: current_user)
        @order_items = OrderItem.where(cart_id: @cart.id)
        @order_items.each do |order_item|
          order_item.order_id = @order.id
        end
        @cart.order_items = []
      end
      redirect_to order_path(@order)
    end
  end

  def confirmation
    @total = all_total
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

  def cart_params
    params.require(:cart).permit(:total_price, :is_confirmed, :id)
  end

  def set_cart
    @cart = Cart.find_by(id: cookies[:cart_id])
  end

  def set_order_item
  end
end
