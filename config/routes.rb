Rails.application.routes.draw do
  devise_for :users
  root to: "sections#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :sections, only: %i[index]
  get "sections/:title", to: "sections#show", as: :section
  get "checkout_cart", to: "checkout_cart#show", as: :checkout_cart
  resources :checkout_cart, only: %i[new]
  post "checkout_cart", to: "checkout_cart#create"
  get "checkout_cart/edit", to: "checkout_cart#edit", as: :edit_checkout_cart
  put "checkout_cart", to: "checkout_cart#update"
  patch "checkout_cart", to: "checkout_cart#update"
  delete "checkout_cart", to: "checkout_cart#update"
  # Defines the root path route ("/")
  # root "articles#index"
end
