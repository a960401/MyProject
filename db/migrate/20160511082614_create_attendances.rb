class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :round_id
      t.integer :member_id
      t.string :status

      t.timestamps null: false
    end
  end
end
