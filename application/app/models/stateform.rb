class Stateform < ApplicationRecord
     belongs_to :user
      validates :income, presence: true, length:{ minimum: 1}
      validates :income, numericality: { greater_than: 0 }
     
    
     
end
