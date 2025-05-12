class FixTallyErrs < ActiveRecord::Migration[8.0]
  def change
    change_column :entries, :tally, :integer
    remove_column :tallies, :created
    remove_column :tallies, :modified
  end
end
