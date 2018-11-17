class SandwichesController < ApplicationController
    scope :grilled, -> { where(grill: true) }
    scope :open_faced, -> { where(open_face: true) }
    scope :vegetarian, -> {where(meat_id: nil)}
    scope :dairy_free, -> {where(cheese_id: nil)}
    scope :vegan, -> {where(cheese_id: nil && meat_id: nil)}
            
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

    def grilled
        @sandwiches = Sandwich.all.grilled
    end

    def open_faced
        @sandwiches = Sandwich.all.open_face
    end

    def vegetarian
        @sandwiches = Sandwich.all.vegetarian
    end

    def dairy_free
        @sandwiches = Sandwich.all.dairy_free
    end

    def vegan
        @sandwiches = Sandwich.all.vegan
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
        params.require(:name).permit(:toast, :grill, :open_face, :bread_name, :spread_name, :meat_name, :cheese_name, :green_name)
    end
    
end
