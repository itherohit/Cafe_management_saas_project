class SubscribeController < ApplicationController
    skip_before_action :ensure_user_logged_in
    def new
        subscribe = Subscribe.create!(email: params[:email])
        flash[:session] = "Subscribed"
        redirect_to menus_path
    end
end