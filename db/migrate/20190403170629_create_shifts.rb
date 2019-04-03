class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.integer :unit_id
      t.integer :nurse_id
      t.string :time_in
      t.string :time_out
      
      t.timestamps
    end
  end
end
