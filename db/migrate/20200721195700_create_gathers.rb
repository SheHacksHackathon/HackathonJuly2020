class CreateGathers < ActiveRecord::Migration[6.0]
  def change
    create_table :gathers do |t|
      t.string :event_start
      t.string :event_end
      t.string :event_name
      t.string :host_name
      t.text :event_desc
      t.text :venue_detail
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
