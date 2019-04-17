class ResidentSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :allergies, :medications, :created_at, :unit, :appointments 
end
