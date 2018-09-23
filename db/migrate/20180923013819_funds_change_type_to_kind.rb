class FundsChangeTypeToKind < ActiveRecord::Migration[5.2]
  def change
    rename_column :funds, :type, :kind
  end
end
