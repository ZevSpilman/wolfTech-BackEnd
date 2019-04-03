class Shift < ApplicationRecord
  belongs_to :unit
  belongs_to :nurse
  has_many :residents, through: :unit
end
