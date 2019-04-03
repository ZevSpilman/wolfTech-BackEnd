class Shift < ApplicationRecord
  belongs_to :nurse
  belongs_to :unit
  has_many :residents, through: :unit
  #has_one :unit

accepts_nested_attributes_for :unit
end
