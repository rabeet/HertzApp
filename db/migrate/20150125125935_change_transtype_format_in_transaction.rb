class ChangeTranstypeFormatInTransaction < ActiveRecord::Migration
  def change
  def change
    change_column :transactions, :transtype, :string
  end
  end
end
