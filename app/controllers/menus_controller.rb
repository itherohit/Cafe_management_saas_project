class MenusController < ApplicationController
    skip_before_action :ensure_user_logged_in
    before_action :current_user
    
    def index
        render "index"
    end
    def new
        menu_items = MenuItem.all.order(:category_id,:item_name)
        render json: menu_items
    end
end