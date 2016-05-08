class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category
      t.integer :total_amount, default: 0
      t.integer :lended_amount, default: 0

      t.timestamps null: false
    end
  end
end
