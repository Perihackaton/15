class AddRoleToShop < ActiveRecord::Migration
  def change
    add_column :shops, :role, :integer
  end
end
