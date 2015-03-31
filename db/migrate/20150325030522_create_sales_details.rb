class CreateSalesDetails < ActiveRecord::Migration
  def change
    create_table :sales_details do |t|
      t.integer :item_id, :null => false
      t.integer :price, :null => false
      t.integer :quantity, :null => false
      t.integer :sale_id, :null => false

      t.timestamps
    end
  end
end
