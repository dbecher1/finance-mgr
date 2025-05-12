class ModifyTally < ActiveRecord::Migration[8.0]
  def change
    add_column :entries, :tally, :decimal
    remove_column :tallies, :entries_id
    add_column :tallies, :balance, :float
  end
end
