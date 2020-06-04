class CategoriesController < ApplicationController
    def new
    #  Category.delete_all
        category = Category.all
        render plain: category[6].name
    end
end