class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.date :event_date, null: false
      t.string :event_time
      t.date :issue_date, null: false
      t.decimal :purchase_price
      t.string :scan_code
      t.string :section
      t.string :aisle
      t.string :seat
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
