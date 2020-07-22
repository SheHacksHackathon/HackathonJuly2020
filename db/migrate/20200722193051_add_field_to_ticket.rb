class AddFieldToTicket < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :check_in, :string
    add_column :tickets, :check_out, :string
  end
end
