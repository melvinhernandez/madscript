class AddUsernameToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :username, :string
    add_index :authors, :username, unique: true
  end
end
