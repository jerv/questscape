class RemoveRangedAndWoodcutting < ActiveRecord::Migration
  def change
  	remove_column :accounts, :woodcutting
  	remove_column :accounts, :ranged

  	remove_column :quests, :woodcutting
  	remove_column :quests, :ranged
  end
end
