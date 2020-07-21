class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.string :fname, null: false
      t.string :lname, null: false
      t.string :company
      t.string :addr1, null: false
      t.string :addr2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :phone
      t.string :email, null: false, unique: true
      t.integer :level
      t.integer :permission
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
