class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_product, only: %i[show]

  def index
    if params[:query].present?
      @products = Product.global_search(params[:query]).order(:title)
    else
      @products = Product.all.order(:title)
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "products/list", locals: {products: @products}, formats: [:html] }
    end
  end

  def show
    @order_item = OrderItem.new
    @ratings = Rating.all
    @sum_rates = []
    product_rating
    @user_rating = user_rating
    search
  end

  private

  def user_rating
    rating_user = []
    @product.ratings.each do |rating|
      rating_user << rating.user_id
    end
    rating_user
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

  def product_rating
    unless @product.ratings == []
      @product.ratings.each do |rating|
        @sum_rates << rating.rate
      end
      sum = 0
      @sum_rates.each do |sum_rate|
        sum += sum_rate
      end
      average = sum.to_f / @sum_rates.size
      @total_rate = show_star_rating(average)
    end
  end

  def set_product
    @section = Section.find(params[:section_id])
    @product = Product.find(params[:id])
  end

  def search
    if params[:query].present?
      redirect_to products_path(query: params[:query]) and return
    end
  end
end
