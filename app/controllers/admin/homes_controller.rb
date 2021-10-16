class Admin::HomesController < ApplicationController
  def top
    @reservation = Reservation.all
  end
  def show
    @admin = current_admin
    @reservation = current_admin.reservations
    @date1 = Date.current.strftime('%Y/%m/%d')
 #   @date2 = Date.current.next_day.strftime('%Y/%m/%d')
    @date2 = Date.current.next_day
    @date3 = @date2+1
    @date4 = @date3+1
  end

  def edit
#    @admin = Admin.find(params[:id])
    @admin = current_admin
  end

  def update
    @admin = current_admin

    if @admin.update(admin_params)
      flash[:notice]="Customer was successfully updated."
      redirect_to admin_customer_path(@admin)
    else
      render :edit
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:name, :profile_image, :introduction)
  end

end
