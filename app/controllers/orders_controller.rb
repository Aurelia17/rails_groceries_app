class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy]

  def index
    @orders = Order.all.order(oder_number: :desc)
    search
  end

  def show
    @chatroom = Chatroom.where(order_id: @order.id).first
    @message = Message.new
    search
    @marker = [{
      lat: current_user.latitude,
      lng: current_user.longitude
    }]
  end

  def edit;
  end

  def update
    @order.is_delivered = true
    @order.save
    redirect_to order_path(@order)
  end

  def destroy
    @order.destroy
    redirect_to orders_path, status: :see_other
  end

  private

  def set_order
    @order = Order.find(params[:id])
    @order_items = OrderItem.where(order_id: @order.id)
  end

  def order_params
    params.require(:order).permit(:oder_number, :total_price)
  end

  def search
    if params[:query].present?
      redirect_to products_path(query: params[:query]) and return
    end
  end
end
