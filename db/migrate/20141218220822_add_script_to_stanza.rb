class AddScriptToStanza < ActiveRecord::Migration
  def change
    add_column :stanzas, :script_id, :integer
  end
end
