// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AlertController from "./alert_controller"
application.register("alert", AlertController)

import CartOrderItemController from "./cart_order_item_controller"
application.register("cart-order-item", CartOrderItemController)

import FormSubmitController from "./form_submit_controller"
application.register("form-submit", FormSubmitController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import OrderItemController from "./order_item_controller"
application.register("order-item", OrderItemController)

import SearchProductsController from "./search_products_controller"
application.register("search-products", SearchProductsController)

import StarRatingController from "./star_rating_controller"
application.register("star-rating", StarRatingController)
