class ChangeAchievementsShopsToAchievementSellers < ActiveRecord::Migration
  def up
    drop_table :achievements_shops
    create_table :achievements_sellers, id: false do |t|
      t.belongs_to :achievement
      t.belongs_to :seller
    end
    add_index :achievements_sellers, :achievement_id
    add_index :achievements_sellers, :seller_id
  end

  def down
    create_table :achievements_shops, id: false do |t|
      t.belongs_to :achievement
      t.belongs_to :shop
    end
  end
end
