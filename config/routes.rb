Rails.application.routes.draw do
  get"/userlist" => "owner#user"
  get"/clerklist" => "owner#clerk"
  get "/invoice" => "owner#invoice"
  get "/orderdash" => "owner#order"
  get "/menusdash" => "owner#menus"
  get "/menuactive" => "owner#active"
  get"/salesdash" => "owner#sales"
  get "/orderreport" => "owner#report"
  patch"/menuhelpers" => "menuhelpers#update"
  get"/menudelete" => "menus#del"
  post "/users/clerk" => "users#clerk"
  resources :users
  resources :menus
  resources :categories
  resources :menuitems
  resources :cart
  resources :dashboard
  resources :owner
  get "/signout" => "users#destroy", as: :destroy_session
  root "users#index"
end
