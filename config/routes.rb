Rails.application.routes.draw do
  root "users#index"
  get"/userlist" => "owner#user"
  get"/clerklist" => "owner#clerk"
  get"/owner/delete" => "owner#delete"
  get "/invoice" => "owner#invoice"
  get "/orderdash" => "owner#order"
  get "/menusdash" => "owner#menus"
  get "/menuactive" => "owner#active"
  get"/salesdash" => "owner#sales"
  get "/orderreport" => "owner#report"
  get"/menudelete" => "menus#del"
  post "/users/clerk" => "users#clerk"
  post "/subscribe" => "subscribe#new"
  get "/orders" => "orders#index"
  resources :users
  resources :menus
  resources :categories
  resources :menuitems
  resources :cart
  resources :dashboard
  resources :owner
  resources :menuhelpers
  get "/signout" => "users#destroy", as: :destroy_session
end
