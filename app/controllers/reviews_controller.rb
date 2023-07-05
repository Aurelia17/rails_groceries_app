class ReviewsController < ApplicationController
  before_action :set_order, only: %i[show new create]
  skip_before_action :authenticate_user!, only: %i[index]

  def show
    @order = Order.find(params[:order_id])
    @general_rate = show_star_rating(@order.review.general_rating)
    @delivery_rate = show_star_rating(@order.review.delivery_rating)
  end

  def new
    @review = Review.new
    search
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.order = @order
    if @review.save
      redirect_to order_path(@order)
    else
      render :new
    end
    search
  end

  private

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

  def review_params
    params.require(:review).permit(:general_review, :general_rating, :delivery_review, :delivery_rating)
  end

  def set_order
    @order = Order.find(params[:order_id])
  end

  def search
    if params[:query].present?
      redirect_to products_path(query: params[:query]) and return
    end
  end
end
