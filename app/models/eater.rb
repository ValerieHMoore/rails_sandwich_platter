class Eater < ApplicationRecord
    has_secure_password

    validates :name, presence: true
    validates_uniqueness_of :name
    validates :password, presence: true

    has_many :sandwiches
    has many :breads, through: :sandwiches
    has many :spreads, through: :sandwiches
    has many :meats, through: :sandwiches
    has many :cheeses, through: :sandwiches
    has many :greens, through: :sandwiches
end
