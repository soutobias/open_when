class AddCollumnToPhases < ActiveRecord::Migration[6.0]
  def change
    rename_column :phrases, :links, :link
  end
end
