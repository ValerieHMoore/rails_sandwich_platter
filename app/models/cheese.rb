class Cheese < ApplicationRecord
  belongs_to :eater
  has_many :sandwiches
end
