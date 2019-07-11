class Animal < ApplicationRecord
    has_many :sightings

    validates :common_name, :latin_name, presence: true
    validates :common_name, :latin_name, uniqueness: true
    validate :name_valid


    def name_valid
        if common_name == latin_name
            errors.add(:common_name, "cannot be the same as latin name")
        end
    end
end
