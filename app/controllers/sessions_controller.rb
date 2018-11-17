class SessionsController < ApplicationController

    def new
      @eater = Eater.new
      @eaters = Eater.all
    end
  
    def create
      @eater = Eater.find_by(:id => eater_params[:name])
      if @eater
        session[:eater_id] = @eater.id
        redirect_to eater_path(@eater)
      else
        redirect_to '/signin'
      end
    end

    def destroy
      session[:eater_id] = nil
      redirect_to root_path
    end

    private

    def eater_params
        params.require(:eater).permit(:name, :password)
    end
end
