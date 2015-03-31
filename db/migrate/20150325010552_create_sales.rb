class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :staff_name
      t.string :custom_name
      t.timestamp :sale_date

      t.timestamps
    end
  end
end
