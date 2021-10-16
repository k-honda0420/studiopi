class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :admin
  
#  belongs_to :calendar
#  has_many :calendars
end
