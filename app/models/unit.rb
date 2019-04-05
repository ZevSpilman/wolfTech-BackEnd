class Unit < ApplicationRecord
  has_many :residents
  has_many :shifts
  has_many :nurses, through: :shifts

  accepts_nested_attributes_for :residents, allow_destroy: true
end
