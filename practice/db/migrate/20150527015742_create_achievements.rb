class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :description
      t.belongs_to :cat, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
