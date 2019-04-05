class ChangeTimeToBeStringInAppointments < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :time, :string
  end
end
