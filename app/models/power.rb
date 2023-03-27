class Power < ApplicationRecord
    has_many :hero_powers
    has_many :heroes, through: :hero_power

    # validations
    validates :description, length: {minimum: 20}
end
