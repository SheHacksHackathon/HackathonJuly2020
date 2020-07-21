class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.string :addr1, null: false
      t.string :addr2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip
      t.string :contact
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
