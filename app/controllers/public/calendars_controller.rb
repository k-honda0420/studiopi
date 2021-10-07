class Public::CalendarsController < ApplicationController
  def index
    @reservation = current_customer.reservations
    @date1 = Date.current.strftime('%Y/%m/%d')
 #   @date2 = Date.current.next_day.strftime('%Y/%m/%d')
    @date2 = Date.current.next_day
    @date3 = @date2+1
    @date4 = @date3+1
  end

  def show
    @reservation = current_customer.reservations
  #  binding.pry
  end
  
  def create
    @reservation = current_customer.reservations
 #   binding.pry
    @reservation = Reservation.new(reservation_time_params)
#    binding.pry
    @reservation.save
    redirect_to calendars_show_path
  end
  
  private
	def reservation_time_params
		params.require(:reservation).permit(:customer_id, :reservation_date)
	end  

 
end
