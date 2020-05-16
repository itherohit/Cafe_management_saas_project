class MenusController < ApplicationController
    skip_before_action :ensure_user_logged_in
    before_action :current_user
    
    def index
        render "index"
    end
    def new
        # item = MenuItem.find(37)
        # item.delete
        # render plain: "done"
        # item =  MenuItem.create!(item_name: "Oreo coffee", img_url:"https://cafe-management.s3-ap-northeast-1.amazonaws.com/Menu+Images/thickshakes/oreo.jpg", price:"220",item_desciption:"An addictive oreo crumble shake blened with cocoa.",category_id:"16")       
        # render plain: item.id
        # c = Category.all[1]
        # item = c.menuitems
        menu_items = MenuItem.all.order(:category_id,:item_name)
        # menu = menui.to_json
        # cookies[:name] = menu.to_json
        render json: menu_items
    end
end