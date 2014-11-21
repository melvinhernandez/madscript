class AddGenreAndNumbersToScript < ActiveRecord::Migration
  def change
    add_column :scripts, :genre, :string
    add_column :scripts, :number_of_stanzas, :integer
  end
end
