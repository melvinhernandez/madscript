class AddAuthorToWhisper < ActiveRecord::Migration
  def change
  	remove_column :whispers, :commented_by, :string
    add_column :whispers, :author_id, :integer
  end
end
