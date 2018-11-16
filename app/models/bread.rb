class Bread < ApplicationRecord
  belongs_to :eater
  belongs_to :sandwich
end
