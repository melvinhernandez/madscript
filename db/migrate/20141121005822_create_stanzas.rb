class CreateStanzas < ActiveRecord::Migration
  def change
    create_table :stanzas do |t|
      t.integer :stanza_number
      t.string :authored_by
      t.integer :number_of_lines

      t.timestamps
    end
  end
end
