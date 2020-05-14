class UsersController < ApplicationController
    def index
        render "index"
    end

    def create
        user = User.new(
          first_name: params[:first_name],
          last_name: params[:last_name],
          email: params[:email],
          password: params[:password],
          role:"customer"
        )
        if user.save
          session[:current_user_id]=user.id
          redirect_to root_path
        else
          flash[:error] = user.errors.full_messages.join(', ')
          redirect_to root_path
        end
    end
end