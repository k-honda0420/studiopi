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
  
  def edit
    @reservation = Reservation.find(params[:id])

  end
  
  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_time_params)
    flash[:notice]="更新されました."
    redirect_to calendars_show_path
  end
  
  def destroy

		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to calendars_show_path
  end
  
  
  private
	def reservation_time_params
	  #修正が必要:admin_id
		params.require(:reservation).permit(:admin_id, :customer_id, :reservation_date, :time)
	end  

 
end
