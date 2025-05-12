class CreateTallies < ActiveRecord::Migration[8.0]
  def change
    create_table :tallies do |t|
      t.string :name
      t.date :created
      t.date :modified
      t.references :user, null: false, foreign_key: true
      t.references :entries, null: false, foreign_key: true

      t.timestamps
    end
  end
end
