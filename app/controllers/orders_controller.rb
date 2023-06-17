class OrdersController < ApplicationController
  before_action :set_order, only: %i[show]
  def index
    @orders = Order.all
  end

  def show; end

  private

  def set_order
    @order = Order.find(params[:id])
    @order_item = Order_item.find(params[:order_item_id])
  end

  def order_params
    params.require(:order).permit(:oder_number, :total_price)
  end
end
