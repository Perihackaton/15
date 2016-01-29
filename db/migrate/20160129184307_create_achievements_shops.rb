class CreateAchievementsShops < ActiveRecord::Migration
  def change
    create_table :achievements_shops, id: false do |t|
      t.belongs_to :achievement
      t.belongs_to :shop
    end
    add_index :achievements_shops, :achievement_id
    add_index :achievements_shops, :shop_id
  end
end
