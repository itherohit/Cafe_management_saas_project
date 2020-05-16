class UsersController < ApplicationController
    skip_before_action :ensure_user_logged_in
    before_action :current_user

    def index
        render "index"
    end

    def new
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

    def create
      user=User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
          session[:current_user_id] = user.id
          redirect_to menus_path
      else
          flash[:error] = "Your Login was Invalid. Retry!"
          redirect_to root_path
      end
    end

    def destroy
      session[:current_user_id]=nil
      @current_user = nil
      redirect_to root_path
    end
end