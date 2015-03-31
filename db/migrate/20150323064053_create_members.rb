class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :name_kana
      t.string :mail_address
      t.string :area
      t.integer :group_id
      t.timestamp :join_date

      t.timestamps
    end
  end
end
