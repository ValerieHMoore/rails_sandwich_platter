class Meat < ApplicationRecord
    validates :name, presence: true
    belongs_to :sandwich
end
