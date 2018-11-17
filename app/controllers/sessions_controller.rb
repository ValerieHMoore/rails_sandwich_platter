class SessionsController < ApplicationController

    def new
      @eater = Eater.new
      @eaters = Eater.all
    end
  
    def create
      @eater = Eater.find_by(:id => eater_params[:name])
      if @user
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to '/signin'
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :password)
    end
end
