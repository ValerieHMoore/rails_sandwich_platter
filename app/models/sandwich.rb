class Sandwich < ApplicationRecord

    scope :grilled, -> { where(grill: true) }
    scope :open_faced, -> { where(open_face: true) }
    scope :vegetarian, -> { where(meat_id: nil) }
    scope :dairy_free, -> { where(cheese_id: nil) }
    # scope :vegan, -> { where(cheese_id: nil && meat_id: nil) }

    validates :name, presence: true
    validates_uniqueness_of :name

    belongs_to :eater
    belongs_to :bread
    belongs_to :spread
    belongs_to :meat
    belongs_to :cheese
    belongs_to :green

    accepts_nested_attributes_for :bread, :spread, :meat, :cheese, :green

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

end
