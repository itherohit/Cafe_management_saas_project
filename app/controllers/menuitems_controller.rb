class MenuitemsController < ApplicationController
    def index
        render plain: "hello"
    end
    def new
        # item = MenuItem.find(37)
        # item.delete
        # render plain: "done"
        # item =  MenuItem.create!(item_name: "Oreo coffee", img_url:"https://cafe-management.s3-ap-northeast-1.amazonaws.com/Menu+Images/thickshakes/oreo.jpg", price:"220",item_desciption:"An addictive oreo crumble shake blened with cocoa.",category_id:"16")       
        # render plain: item.id
        c = Category.all[1]
        # item = c.menuitems
        render plain: c.menu_items[0].item_name
        end
end