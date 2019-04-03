class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :type, :variation
  end
end
