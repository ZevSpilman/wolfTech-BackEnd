class Unit < ApplicationRecord
  has_many :residents
  has_many :shifts
  has_many :nurses, through: :shifts
end
