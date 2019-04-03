class CreateResidents < ActiveRecord::Migration[5.2]
  def change
    create_table :residents do |t|
      t.string :name
      t.integer :age
      t.string :allergies
      t.string :medications
      t.timestamps
    end
  end
end
