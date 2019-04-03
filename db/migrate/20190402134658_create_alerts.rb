class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string :message

      t.integer :admin_id
      t.integer :nurse_id
      t.timestamps
    end
  end
end
