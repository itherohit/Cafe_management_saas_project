class CategoriesController < ApplicationController
    def index
        render plain: "ok"
    end
    def new
    #  Category.delete_all
        category = Category.all
        render plain: category[6].name
    end
end