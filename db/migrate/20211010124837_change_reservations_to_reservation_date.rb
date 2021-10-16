class ChangeReservationsToReservationDate < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :reservation_date, :datetime
  end
end
