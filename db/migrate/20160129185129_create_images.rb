class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

      t.belongs_to :product
      t.belongs_to :shop
      t.timestamps null: false
    end
  end
end
