class Nurse < ApplicationRecord
  has_many :alerts

  has_many :shifts
  has_many :units, through: :shifts
  has_many :residents, through: :units

end
