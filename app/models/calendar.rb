class Calendar < ApplicationRecord
  belongs_to :customer
  belongs_to :admin
  
#  belongs_to :reservation
#  has_many :reservations
end
