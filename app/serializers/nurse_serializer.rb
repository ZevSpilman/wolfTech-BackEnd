class NurseSerializer < ActiveModel::Serializer
  attributes :id, :name, :shifts

  def shifts
    ActiveModel::SerializableResource.new(object.shifts,  each_serializer: ShiftSerializer)
  end
end
