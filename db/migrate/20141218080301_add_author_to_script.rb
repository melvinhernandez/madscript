class AddAuthorToScript < ActiveRecord::Migration
  def change
    add_column :scripts, :author_id, :integer
  end
end
