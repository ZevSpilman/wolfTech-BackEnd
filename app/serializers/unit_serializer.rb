class UnitSerializer < ActiveModel::Serializer
  attributes :id, :shifts, :name, :residents

  def residents
    ActiveModel::SerializableResource.new(object.residents, each_serializer: ResidentSerializer)
  end
end
