class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fname
      t.string :lname
      t.string :company
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :level
      t.string :permission
      t.string :password_digest

      t.timestamps
    end
  end
end
