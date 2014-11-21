class CreateCycwrites < ActiveRecord::Migration
  def change
    create_table :cycwrites do |t|
      t.integer :current_state
      t.integer :new_state
      t.integer :likes_for_current_draft
      t.integer :draft_state_number
      t.integer :number_of_editors
      t.integer :curr_editor

      t.timestamps
    end
  end
end
