class Admin < ApplicationRecord
  attachment :profile_image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :reservations
  has_many :calendars
  has_many :chat_rooms

  has_many :chats
  has_many :user_rooms


end
