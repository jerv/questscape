class FixName < ActiveRecord::Migration
	def change
    rename_column :accounts, :range, :ranged
  end
end
