class ChangeDateToString < ActiveRecord::Migration[6.0]
  def change
    change_column :tickets, :event_date, :string
    change_column :tickets, :purchase_date, :string
  end
end
