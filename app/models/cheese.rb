class Cheese < ApplicationRecord
    validates :name, presence: true
    belongs_to :sandwich
end
