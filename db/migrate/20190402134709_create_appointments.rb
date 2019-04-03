class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|

      t.datetime :time
      t.integer :resident_id

      t.timestamps
      t.timestamps
    end
  end
end
