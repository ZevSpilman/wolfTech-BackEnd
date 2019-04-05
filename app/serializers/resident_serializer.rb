class ResidentSerializer < ActiveModel::Serializer
  attributes :id,:unit_id, :name,  :allergies, :medications, :appointments
end
