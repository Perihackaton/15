class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name
      t.text :description
      t.float :price
      t.belongs_to :category
      t.belongs_to :shop
      t.timestamps null: false
    end
  end
end
