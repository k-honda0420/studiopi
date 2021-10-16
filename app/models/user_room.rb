class UserRoom < ApplicationRecord
  belongs_to :customer
  belongs_to :room
  belongs_to :admin 
end
