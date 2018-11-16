class GreensController < ApplicationController

    def new
        @green = Green.new
    end

    def index
        @greens = Green.all
    end
end
