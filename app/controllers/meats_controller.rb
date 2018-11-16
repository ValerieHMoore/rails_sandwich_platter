class MeatsController < ApplicationController

    def new
        @meat - Meat.new
    end

    def index
        @meat = Meat.all
    end
end
