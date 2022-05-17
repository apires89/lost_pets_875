class Pet < ApplicationRecord
  ## validations
  validates :name, presence: true
  validates :species, inclusion: { in: %w(dog cat mouse lion),
    message: "%{value} is not a valid choice" }
end
