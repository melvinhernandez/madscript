class AddFavegenreToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :fave_genre, :string
  end
end
