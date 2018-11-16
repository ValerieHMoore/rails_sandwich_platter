class Eater < ApplicationRecord
    has_many :sandwiches
    has many :breads, through: :sandwiches
    has many :spreads, through: :sandwiches
    has many :meats, through: :sandwiches
    has many :cheeses, through: :sandwiches
    has many :greens, through: :sandwiches
end
