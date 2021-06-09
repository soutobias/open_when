class AddCollumnToPhrases < ActiveRecord::Migration[6.0]
  def change
    add_column :phrases, :links, :string
  end
end
