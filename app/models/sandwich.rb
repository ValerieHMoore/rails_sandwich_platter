class Sandwich < ApplicationRecord
    belongs_to :eater
    has_many :breads, :spreads, :meats, :cheeses, :greens
end
