class FixTally2 < ActiveRecord::Migration[8.0]
  def change
    remove_column :entries, :tally
  end
end
