Rails.application.routes.draw do
  get "/owner" => "owner#index"
  get"/userlist" => "owner#user"
  get "/invoice" => "owner#invoice"
  get "/orderdash" => "owner#order"
  get "/menusdash" => "owner#menus"
  get "/menuactive" => "owner#active"
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  get"/clerklist" => "owner#clerk"
  get"/salesdash" => "owner#sales"
  get "/orderreport" => "owner#report"
  patch"/menuhelpers" => "menuhelpers#update"
  get"/menudelete" => "menus#del"
  delete"/destroyclerk"=>"owner#deleteclerk"
  post "/users/clerk" => "users#clerk"
  resources :users
  resources :menus
  resources :categories
  resources :menuitems
  resources :cart
  resources :dashboard
  get "/signout" => "users#destroy", as: :destroy_session
  root "users#index"
end
