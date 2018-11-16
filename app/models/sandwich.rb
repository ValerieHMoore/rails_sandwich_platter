class Sandwich < ApplicationRecord
  belongs_to :eater
  belongs_to :bread
  belongs_to :spread
  belongs_to :meat
  belongs_to :cheese
  belongs_to :green
end
