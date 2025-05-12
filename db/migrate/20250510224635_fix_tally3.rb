class FixTally3 < ActiveRecord::Migration[8.0]
  def change
    add_reference :entries, :tally, foreign_key: true
  end
end
