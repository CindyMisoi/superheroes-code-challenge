class HeroPower < ApplicationRecord
    belongs_to :power
    belongs_to :hero 

    # validations 
    @allowed_strengths = ['Strong', 'Weak', 'Average']
    validates :strength, inclusion: @allowed_strengths
end
