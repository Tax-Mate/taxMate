class Stateform < ApplicationRecord
      belongs_to :user
      validates :income, presence: true, length:{ minimum: 1}
end
