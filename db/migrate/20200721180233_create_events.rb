class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :event_start, null:false
      t.datetime :event_end
      t.string :event_name, null:false
      t.string :host_name
      t.text :event_desc
      t.text :location_detail
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
