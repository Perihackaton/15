class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.string :avatar
      t.text :description
      t.timestamps null: false
    end
  end
end
