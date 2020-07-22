class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :event_date
      t.string :event_time
      t.string :purchase_date
      t.decimal :purchase_price
      t.string :fname
      t.string :lname
      t.string :scan_code
      t.string :section
      t.string :aisle
      t.string :seat
      t.references :gather, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
