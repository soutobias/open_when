class AddColumnToP < ActiveRecord::Migration[6.0]
  def change
    add_column :phrases, :sentences, :string
  end
end
