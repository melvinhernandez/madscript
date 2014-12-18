class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.string :title
      t.string :genre
      t.integer :num_of_stanzas
      t.integer :votes

      t.timestamps
    end
  end
end
