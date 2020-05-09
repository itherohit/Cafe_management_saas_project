Rails.application.routes.draw do
  root "users#index"
  resources :menus
  resources :categories
  resources :menuitems
end
