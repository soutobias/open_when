class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :phrases, :sentences, :sentence
  end
end
