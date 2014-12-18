class AddAuthorToStanza < ActiveRecord::Migration
  def change
  	remove_column :stanzas, :authored_by, :string
    add_column :stanzas, :author_id, :integer
  end
end
