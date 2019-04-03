class CreateNurses < ActiveRecord::Migration[5.2]
  def change
    create_table :nurses do |t|
      t.string :name
      t.string :contract
      t.string :emergency_contact
      t.boolean :logged_in

      t.timestamps
    end
  end
end
