class BreadsController < ApplicationController

    def new
        @bread = Bread.new
    end

    def index
        @breads = Bread.all
    end
end
