class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :attack
      t.string :strength
      t.string :defence
      t.string :ranged
      t.string :prayer
      t.string :magic
      t.string :runecrafting
      t.string :construction
      t.string :hitpoints
      t.string :agility
      t.string :herblore
      t.string :thieving
      t.string :crafting
      t.string :fletching
      t.string :slayer
      t.string :hunter
      t.string :mining
      t.string :smithing
      t.string :fishing
      t.string :cooking
      t.string :firemaking
      t.string :woodcutting
      t.string :farming
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
