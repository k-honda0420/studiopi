class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :reservation_date
      t.string :time
      t.datetime :created_at
      t.datetime :updated_at
      t.timestamps
    end
  end
end
