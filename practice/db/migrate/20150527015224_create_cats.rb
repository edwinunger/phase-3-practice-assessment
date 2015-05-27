class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.boolean :cute, default: false

      t.timestamps null: false
    end
  end
end
