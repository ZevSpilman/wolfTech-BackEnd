class AddUnitIdToResidents < ActiveRecord::Migration[5.2]
  def change
    add_column :residents, :unit_id, :integer
  end
end
