class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_up_cart
  # def set_up_cart
  #   if @cart.nil?
  #     @cart = Cart.create
  #   end
  # end
  # def set_up_cookies
  #   unless cookies[:quantity] && cookies[:product_id]
  #     cookies[:quantity] = Array.new
  #     cookies[:product_id] = Array.new
  #   end
  #   puts "------------------------"
  #   puts cookies[:quantity]
  #   puts cookies[:product_id]
  # end

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
end
