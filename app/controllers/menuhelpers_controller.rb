class MenuhelpersController < ApplicationController
    skip_before_action :ensure_user_logged_in
    
    
    def create
        name=params[:name]
        menu_ids=params[:menu_ids]
        menu=Menu.new(name: name,active: false)
        menu.save
        menu_ids.each do |item|
            i=MenuItem.find(item)
            mh=Menuhelper.new(menu_id: menu.id, menu_item_id: item,category_id: i.category_id)
            mh.save!
        end
        flash[:session] = name + " Created"
        redirect_to "/menusdash"
    end
    def update
        menu=params[:menu]
        item=params[:menuitem]
        i=MenuItem.find(item)
        mh=Menuhelper.new(menu_id: menu,menu_item_id: item,category_id: i.category_id)
        mh.save!
        redirect_to "/menusdash"
    end

    def edit
        id = params[:id]
        item = Menuhelper.find(id)
        flash[:session] = "Item Deleted"
        item.delete
        redirect_to "/menusdash"
    end

    def destroy
        id = params[:menu]
        menu = Menu.find(id)
        flash[:session] = menu.name + " Deleted"
        menu.menuhelpers.delete_all
        menu.delete
        redirect_to "/menusdash"
    end

end
