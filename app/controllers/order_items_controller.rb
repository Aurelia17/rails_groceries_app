class OrderItemsController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    @order_item = current_order.order_items.build(product: product, quantity: 1)

    if @order_item.save
      flash[:notice] = 'Item added to order.'
    else
      flash[:alert] = 'Failed to add item to order.'
    end

    redirect_to cart_path
  end

  def update
    @order_item = current_order.order_items.find(params[:id])

    if @order_item.update(quantity: params[:quantity])
      flash[:notice] = 'Order item quantity updated.'
    else
      flash[:alert] = 'Failed to update order item quantity.'
    end

    redirect_to cart_path
  end

  def destroy
    @order_item = current_order.order_items.find(params[:id])

    if @order_item.destroy
      flash[:notice] = 'Item removed from order.'
    else
      flash[:alert] = 'Failed to remove item from order.'
    end

    redirect_to cart_path
  end
end
