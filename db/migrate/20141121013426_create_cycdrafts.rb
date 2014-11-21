class CreateCycdrafts < ActiveRecord::Migration
  def change
    create_table :cycdrafts do |t|
      t.string :draft_name
      t.integer :draft_number
      t.string :draft_state

      t.timestamps
    end
  end
end
