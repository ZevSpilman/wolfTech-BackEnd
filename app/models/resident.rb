class Resident < ApplicationRecord
 has_many :appointments

  belongs_to :unit
  has_many :shifts, through: :unit
  has_many :nurses, through: :shifts

end
