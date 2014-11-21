class AddToomadToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :too_mad, :integer
  end
end
