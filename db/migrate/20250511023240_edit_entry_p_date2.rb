class EditEntryPDate2 < ActiveRecord::Migration[8.0]
  def change
    change_column :entries, :purchased_on, :string
    remove_column :entries, :purchase_date

  end
end
