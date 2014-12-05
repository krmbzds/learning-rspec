class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.string :weapons
      t.boolean :brain
      t.boolean :dead
      t.float :weight
      t.float :height

      t.timestamps
    end
  end
end
