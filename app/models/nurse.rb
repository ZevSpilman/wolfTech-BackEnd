class Nurse < ApplicationRecord
  has_many :assignments
  has_many :residents, through: :assignments
  has_many :alerts
end
