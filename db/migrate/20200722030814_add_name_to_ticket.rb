class AddNameToTicket < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :fname, :string
    add_column :tickets, :lname, :string
  end
end
