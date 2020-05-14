Rails.application.routes.draw do
  root "users#index"
  resources :users
  resources :menus
  resources :categories
  resources :menuitems
  resources :cart
  resources :dashboard
end
