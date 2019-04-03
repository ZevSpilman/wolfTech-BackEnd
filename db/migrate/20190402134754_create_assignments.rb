class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.integer :nurse_id
      t.integer :resident_id
      t.timestamps
    end
  end
end
