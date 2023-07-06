class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy]

  def index
    @orders = Order.all.order(oder_number: :desc)
    orders_rating
    search
  end

  def show
    @chatroom = Chatroom.where(order_id: @order.id).first
    @message = Message.new
    search
    order_rating
    @review = @order.review
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

  def order_rating
    unless @order.review.nil?
      @total_rate = show_star_rating(@order.review.general_rating)
      @delivery_rate = show_star_rating(@order.review.delivery_rating)
    end
  end

  def orders_rating
    @total_rate = []
    @orders.each do |order|
      unless order.review.nil?
        @total_rate.append(show_star_rating(order.review.general_rating))
      else
        @total_rate.append([])
      end
    end
  end

  def total_rate
    show_star_rating(order.review.general_rating)
  end

  def show_star_rating(rating)
    zero_star_icon_name = "star"
    full_star_icon_name = "star_fill"
    half_star_icon_name = "star_lefthalf_fill"
    rating_round_point5 = (rating * 2).round / 2.0
    (1..5).map do |i|
      next(full_star_icon_name) if i <= rating_round_point5
      next(half_star_icon_name) if rating_round_point5 + 0.5 == i
      zero_star_icon_name
    end
  end

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
