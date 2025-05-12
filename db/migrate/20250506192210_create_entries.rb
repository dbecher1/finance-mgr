class CreateEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :entries do |t|
      t.string :name
      t.date :purchased_on
      t.float :price

      t.timestamps
    end
  end
end
