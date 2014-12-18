class AddDescriptionToScript < ActiveRecord::Migration
  def change
    add_column :scripts, :preface, :text
  end
end
