class OrdersController < ApplicationController
  before_action :set_order, only: %i[show]
  def index
    @orders = Order.all.order(oder_number: :desc)
  end

  def show
    @chatroom = Chatroom.where(order_id: @order.id).first
    @message = Message.new
  end

  private

  def set_order
    @order = Order.find(params[:id])
    @order_items = OrderItem.where(order_id: @order.id)
  end

  def order_params
    params.require(:order).permit(:oder_number, :total_price)
  end
end
