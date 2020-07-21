class ChangeDatetypeInGather < ActiveRecord::Migration[6.0]
  def change
    change_column :gathers, :event_start, :string
    change_column :gathers, :event_end, :string
  end
end
