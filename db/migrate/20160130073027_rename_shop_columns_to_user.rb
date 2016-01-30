class RenameShopColumnsToUser < ActiveRecord::Migration
  def up
    rename_column :images, :shop_id, :user_id
    rename_column :orders, :shop_id, :seller_id
    rename_column :orders, :user_id, :buyer_id
    rename_column :products, :shop_id, :seller_id
    add_column :users, :seller_id, :integer
  end

  def down
    rename_column :images, :user_id, :shop_id
    rename_column :orders, :seller_id, :shop_id
    rename_column :orders, :buyer_id, :user_id
    rename_column :products, :seller_id, :shop_id
    remove_column :users, :seller_id
  end
end
