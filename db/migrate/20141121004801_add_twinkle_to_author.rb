class AddTwinkleToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :twinkle, :integer
  end
end
