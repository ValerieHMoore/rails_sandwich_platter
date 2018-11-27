class SandwichesController < ApplicationController

    def new
        @sandwich = Sandwich.new
    end

    def create
        @sandwich = Sandwich.create(sandwich_params)
        redirect_to sandwich_path(@sandwich)
    end

    def index
        @sandwiches = Sandwich.all
    end

    def show
        @sandwich = Sandwich.find_by(id: params[:id])
    end

    def edit
        @sandwich = Sandwich.find_by(id: params[:id])
    end

    def update
        @sandwich = Sandwich.find_by(id: params[:id])
        @sandwich.update(sandwich_params)
        redirect_to sandwich_path(@sandwich)
    end

    private

    def sandwich_params
        params.require(:sandwich).permit(:name, :toast, :grill, :open_face, bread_attributes:[:name], spread_attributes:[:name], meat_attributes:[:name], cheese_attributes:[:name], green_attributes:[:name])
    end
    
end
