// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CartOrderItemController from "./cart_order_item_controller"
application.register("cart-order-item", CartOrderItemController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import OrderItemController from "./order_item_controller"
application.register("order-item", OrderItemController)

import SearchProductsController from "./search_products_controller"
application.register("search-products", SearchProductsController)
