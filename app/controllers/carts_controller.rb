class CartsController < ApplicationController
  before_action :set_cart, only: %i[show ]
  skip_before_action :authenticate_user!, only: %i[show edit update]

  def show
    @order_items = OrderItem.includes([:product]).where(cart_id: @cart.id).all
    @total = all_total + 75
    @cart.total_price = all_total
    @cart.save
    search
    @order_items.each do |order_item|
      if order_item.quantity.zero? then order_item.destroy end
    end
    @subtotal = all_total
  end

  def edit
    @product = Product.find(params[:product_id])
    search
  end

  def update
    @order_items = OrderItem.where(cart_id: @cart.id)
    @total = all_total
    if @cart.update(cart_params)
      if @cart.is_confirmed?
        if current_user.orders.last
          oder_number = current_user.orders.last.oder_number + 56
        else
          oder_number = 9847
        end
        @order = Order.create(total_price: all_total, oder_number: oder_number, user: current_user)
        @order_items.each do |order_item|
          order_item.order_id = @order.id
          order_item.save
        end
        @cart.order_items = []
      end
      @chatroom = Chatroom.create(name: @order.oder_number.to_s, order: @order)
      qty_product_updated(@order_items)
      deliverboy = User.where(email: "test@test.test").first
      @msg_deliver = Message.create(content: "Bonzour, noun byen gagn to komman, mo p vini!", chatroom: @chatroom, user: deliverboy)
      redirect_to order_path(@order)
    end
    search
  end

  def confirmation
    @total = all_total
    search
  end


  private

  def all_total
    total_all = 0
    @order_items = OrderItem.all.where(cart_id: @cart.id)
    @order_items.each do |order_item|
      total_all += order_item.total_price
    end
    return total_all.to_i
  end

  def cart_params
    params.require(:cart).permit(:total_price, :is_confirmed, :id)
  end

  def set_cart
    @cart = Cart.find_by(id: cookies[:cart_id])
  end

  def search
    if params[:query].present?
      redirect_to products_path(query: params[:query]) and return
    end
  end

  def qty_product_updated(order_items)
    order_items.each do |order_item|
      product = Product.where(id: order_item.product_id).first
      product_quantity_updated = product.quantity - order_item.quantity
      product.quantity = product_quantity_updated
      product.save
    end
  end
end
