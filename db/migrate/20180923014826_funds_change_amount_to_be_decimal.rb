class FundsChangeAmountToBeDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :funds, :amount, :decimal
  end
end
