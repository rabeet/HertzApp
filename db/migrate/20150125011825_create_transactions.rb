class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :product_id
      t.date :date
      t.integer :type
      t.string :north
      t.string :north_east
      t.string :north_west
      t.string :south
      t.string :south_east
      t.string :south_west
      t.string :east
      t.string :west
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4

      t.timestamps null: false
    end
  end
end
