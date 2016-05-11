class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :round_id
      t.string :member_id
      t.string :status

      t.timestamps null: false
    end
  end
end
