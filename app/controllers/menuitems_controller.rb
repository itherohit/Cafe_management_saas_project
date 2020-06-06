class MenuitemsController < ApplicationController
    skip_before_action :ensure_user_logged_in
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
    def destroy
        id=params[:id]
        todo=Menuitem.find(id)
        mh=Menuhelper.where(menuitem_id: id)
        mh.destroy_all
        todo.destroy
        redirect_to "/owner"
    end    
end