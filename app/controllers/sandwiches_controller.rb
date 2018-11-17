class SandwichesController < ApplicationController

    def new
        @sandwich = Sandwich.new
    end

    def index
        @sandwiches = Sandwich.all
    end

    def show
    end

    def edit
    end

    def vegan
    end

    def vegetarian
    end

    def dairy_free
    end

    private

    def sandwich_params
        params.require(:name).permit(:toast, :grill, :open_face)
    end
    
end
