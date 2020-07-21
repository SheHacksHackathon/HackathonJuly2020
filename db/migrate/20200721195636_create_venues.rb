class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :zip
      t.string :contact
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
