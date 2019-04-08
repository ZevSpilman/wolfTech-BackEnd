class ResidentSerializer < ActiveModel::Serializer
  attributes :id, :name, :allergies, :medications, :unit, :appointments
end
