class Alert < ApplicationRecord
  belongs_to :nurse
  belongs_to :admin
end
