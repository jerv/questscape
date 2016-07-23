class AddingBackRangedAndWoodcutting < ActiveRecord::Migration
  def change
  	add_column :accounts, :woodcutting, :integer
  	add_column :accounts, :ranged, :integer

  	add_column :quests, :woodcutting, :integer
  	add_column :quests, :ranged, :integer
  end
end
