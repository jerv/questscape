class AddWoodcuttingToUsers < ActiveRecord::Migration
  def change
  	add_column :accounts, :woodcutting, :string
  end
end
