class Public::HomesController < ApplicationController
  def top
    @customer = Customer.all
    if admin_signed_in?
      @admin = current_admin
    end
  end

  def index
    @admin = Admin.all
  end
  def show
    @admin = Admin.find(params[:id])
    @reservation = current_customer.reservations
    @date1 = Date.current.strftime('%Y/%m/%d')
    @date2 = Date.current.next_day
    @date3 = @date2+1
    @date4 = @date3+1
    @customer = current_customer
  end
end

