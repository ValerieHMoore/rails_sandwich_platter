class CheesesController < ApplicationController

    def new
        @cheese = Cheese.new
    end

    def index
        @cheeses = Cheese.all
    end
end
