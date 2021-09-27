class CreateCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :calendars do |t|
      t.integer :time_id
      t.string :date
      t.boolean :reserved
      t.boolean :closed
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
