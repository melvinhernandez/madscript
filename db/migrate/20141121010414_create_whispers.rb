class CreateWhispers < ActiveRecord::Migration
  def change
    create_table :whispers do |t|
      t.string :commented_by
      t.integer :reference_line_start
      t.integer :reference_line_end
      t.string :analysis_and_feedback

      t.timestamps
    end
  end
end
