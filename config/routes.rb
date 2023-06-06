Rails.application.routes.draw do
  devise_for :users
  root to: "sections#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :sections, only: %i[index]
  get "sections/:title", to: "sections#show", as: :section
  # Defines the root path route ("/")
  # root "articles#index"
end
