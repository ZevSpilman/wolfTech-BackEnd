class ShiftSerializer < ActiveModel::Serializer
  attributes :id, :time_in, :time_out, :unit

  def unit
    ActiveModel::SerializableResource.new(object.unit, each_serializer: UnitSerializer)
  end
end
