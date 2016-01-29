class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|

      t.string :name
      t.belongs_to :product
      t.float :price
      t.belongs_to :order
      t.timestamps null: false
    end
  end
end
