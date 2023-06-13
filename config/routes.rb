Rails.application.routes.draw do
  devise_for :users
  root to: "sections#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :sections, only: %i[index show] do
    resources :products, only: %i[show] do
      resources :ratings, only: %i[index new]
    end
  end
  resources :orders, only: %i[index show]
  resource :cart, only: %i[show edit update]
  resource :order_item, only: %i[new create edit update destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
