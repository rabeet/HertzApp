class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :ic
      t.text :name

      t.timestamps null: false
    end
  end
end
