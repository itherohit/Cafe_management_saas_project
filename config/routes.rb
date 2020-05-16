Rails.application.routes.draw do
  resources :users
  resources :menus
  resources :categories
  resources :menuitems
  resources :cart
  resources :dashboard
  get "/signout" => "users#destroy", as: :destroy_session
  root "users#index"
end
