class SpreadsController < ApplicationController

    def new
        @spread = Spread.new
    end

    def index
        @spreads = Spread.all
    end
end
