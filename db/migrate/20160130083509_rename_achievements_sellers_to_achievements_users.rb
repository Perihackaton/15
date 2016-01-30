class RenameAchievementsSellersToAchievementsUsers < ActiveRecord::Migration
  def up
    drop_table :achievements_sellers
    create_table :achievements_users, id: false do |t|
      t.belongs_to :achievement
      t.belongs_to :seller
    end
    add_index :achievements_users, :achievement_id
    add_index :achievements_users, :seller_id
  end

  def down
    drop_table :achievements_users
    create_table :achievements_sellers, id: false do |t|
      t.belongs_to :achievement
      t.belongs_to :seller
    end
  end
end
