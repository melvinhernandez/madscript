class AddContentToStanza < ActiveRecord::Migration
  def change
    add_column :stanzas, :content, :text
  end
end
