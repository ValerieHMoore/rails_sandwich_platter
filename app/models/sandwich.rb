class Sandwich < ApplicationRecord

    validates :name, presence: true

    belongs_to :eater
    belongs_to :bread
    belongs_to :spread
    belongs_to :meat
    belongs_to :cheese
    belongs_to :green

    validate :has_bread
    validate :has_filling

    def has_bread
        if bread.empty
            errors.add(:sandwich, "You must have bread to make a sandwich")
        end
    end

    def has_filling
        if spread.empty || meat.empty || cheese.empty || green.empty
            errors.add(:sandwich, "You must have at least one filling to make a sandwich")
        end
    end

    def self.vegan
        where(cheese_id: nil && meat_id: nil)
    end

    def self.vegetarian
        where(meat_id: nil)
    end

    def self.dairy_free
        where(cheese_id: nil)
    end

    def self.grilled
        where(grill: true)
    end

end
