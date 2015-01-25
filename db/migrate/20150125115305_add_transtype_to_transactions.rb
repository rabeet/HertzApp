class AddTranstypeToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :transtype, :integer
  end
end
