class Resident < ApplicationRecord
  has_many :assignments
  has_many :nurses, through: :assignments
  has_many :appointments
end
