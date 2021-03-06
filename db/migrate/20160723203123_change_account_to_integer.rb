class ChangeAccountToInteger < ActiveRecord::Migration
  def change
  	change_column :accounts, :attack, :integer
  	change_column :accounts, :strength, :integer
  	change_column :accounts, :defence, :integer
  	change_column :accounts, :ranged, :integer
  	change_column :accounts, :prayer, :integer
  	change_column :accounts, :magic, :integer
  	change_column :accounts, :runecrafting, :integer
  	change_column :accounts, :construction, :integer
  	change_column :accounts, :hitpoints, :integer
  	change_column :accounts, :agility, :integer
  	change_column :accounts, :herblore, :integer
  	change_column :accounts, :thieving, :integer
  	change_column :accounts, :crafting, :integer
  	change_column :accounts, :fletching, :integer
  	change_column :accounts, :slayer, :integer
  	change_column :accounts, :hunter, :integer
  	change_column :accounts, :mining, :integer
  	change_column :accounts, :smithing, :integer
  	change_column :accounts, :fishing, :integer
  	change_column :accounts, :cooking, :integer
  	change_column :accounts, :firemaking, :integer
  	change_column :accounts, :woodcutting, :integer
  	change_column :accounts, :farming, :integer

  	change_column :quests, :attack, :integer
  	change_column :quests, :strength, :integer
  	change_column :quests, :defence, :integer
  	change_column :quests, :ranged, :integer
  	change_column :quests, :prayer, :integer
  	change_column :quests, :magic, :integer
  	change_column :quests, :runecrafting, :integer
  	change_column :quests, :construction, :integer
  	change_column :quests, :hitpoints, :integer
  	change_column :quests, :agility, :integer
  	change_column :quests, :herblore, :integer
  	change_column :quests, :thieving, :integer
  	change_column :quests, :crafting, :integer
  	change_column :quests, :fletching, :integer
  	change_column :quests, :slayer, :integer
  	change_column :quests, :hunter, :integer
  	change_column :quests, :mining, :integer
  	change_column :quests, :smithing, :integer
  	change_column :quests, :fishing, :integer
  	change_column :quests, :cooking, :integer
  	change_column :quests, :firemaking, :integer
  	change_column :quests, :woodcutting, :integer
  	change_column :quests, :farming, :integer
  end
end
