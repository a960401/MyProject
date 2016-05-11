class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :month
      t.integer :week

      t.timestamps null: false
    end
  end
end
