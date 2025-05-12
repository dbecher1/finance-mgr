class EditEntryPDate < ActiveRecord::Migration[8.0]
  def change
    change_column :entries, :purchase_date, :string
  end
end
