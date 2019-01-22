class Student < ApplicationRecord
  validates :name,:age, :place_of_birth, presence: true
end
