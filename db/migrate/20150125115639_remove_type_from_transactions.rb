class RemoveTypeFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :type, :integer
  end
end
