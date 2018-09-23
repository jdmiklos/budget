class AddAncestryToFunds < ActiveRecord::Migration[5.2]
  def change
    add_column :funds, :ancestry, :string
    add_index :funds, :ancestry
  end
end
