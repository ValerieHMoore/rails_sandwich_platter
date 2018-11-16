class SandwichesController < ApplicationController

    def new
        @sandwich = Sandwich.new
    end

    private

    def sandwich_params
        params.require(:name).permit(:toast, :grill, :open_face)
    end
    
end
