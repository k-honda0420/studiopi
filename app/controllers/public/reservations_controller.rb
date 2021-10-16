class Public::ReservationsController < ApplicationController
  def index
    @reservation = current_customer.reservations
    @calendar = current_customer.calendars
  end
  def update
  end
  def destroy
  end
  def create
    @reservation = current_customer.reservations
    @reservation = Reservation.new(reservation_time_params)
    @reservation.save
    redirect_to reservations_index_path
  end

  private
	def reservation_time_params
		params.require(:reservation).permit(:customer_id, :reservation_date, :time)
	end
	
end
