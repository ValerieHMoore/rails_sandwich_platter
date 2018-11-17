class EatersController < ApplicationController

    before_action :require_login, only: [:show]
    
    def new
        @eater = Eater.new
    end
        
    def create
        @eater = Eater.create(eater_params)
        if @eater
            session[:eater_id] = @eater.id
            redirect_to eater_path(@eater)
        else
        end
    end

    def show
        @eater = Eater.find_by(:id => params[:id])
        if @eater.nil?
          flash[:notice] = "Eater not found."
          redirect_to eaters_path
    
        else
          @eater_message = params[:eater_message] if params[:eater_message]
          @eater_message ||= false
          render :show
        end
    end

    private

    def eater_params
        params.require(:eater).permit(:name, :password, :admin)
    end
    
end
