class MenuitemsController < ApplicationController
    skip_before_action :ensure_user_logged_in
    before_action :check_owner
    def create
        name=params[:name]
        category=params[:category]
        price=params[:price]
        url=params[:url]
        descp = params[:descp]
        new_menuitem=MenuItem.new(item_name: name,item_desciption: descp, category_id: category,price: price,img_url: url)
        if new_menuitem.save
            flash[:session] = name.capitalize + " Added"
            redirect_to owner_index_path
        else
            flash[:session] = "Error Adding"
            redirect_to owner_index_path
        end
    end

    def new
        menu_id = params[:menu]
        Menu.all.each do |menu|
            menu.active = false
            menu.save
        end
        menu = Menu.find(menu_id)
        menu.active = true
        menu.save
        redirect_to "/menusdash"
    end

    def destroy
        id = params[:id]
        menu_item = MenuItem.find(id)
        menu_helper_item = Menuhelper.where(menu_item_id: id)
        flash[:session] = menu_item.capitalize + " Deleted"
        menu_helper_item.delete_all
        menu_item.delete
        redirect_to owner_index_path
      end
end