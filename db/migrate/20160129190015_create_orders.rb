class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|

      t.belongs_to :user
      t.belongs_to :shop
      t.timestamps null: false
    end
  end
end
