class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def set_up_cart
    if cookies[:cart_id]
      @cart = Cart.find(:cart_id)
    else
    end
  end
end
