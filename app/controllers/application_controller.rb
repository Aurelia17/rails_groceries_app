class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_up_cart
  before_action :cart_total

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name username avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name username avatar])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  def set_up_cart
    if cookies[:cart_id]
      puts "cookie is present"
      @cart = Cart.find(cookies[:cart_id])
    else
      puts "cookie is absent"
      @cart = Cart.create
      cookies[:cart_id] = @cart.id
    end
  end

  def cart_total
    total_all = 0
    @order_items = OrderItem.all.where(cart_id: @cart.id)
    @order_items.each do |order_item|
      total_all += order_item.total_price
    end
    @cart.total_price = total_all.to_i
  end
end
