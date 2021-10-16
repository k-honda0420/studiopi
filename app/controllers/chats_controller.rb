class ChatsController < ApplicationController
    def show
      if customer_signed_in?
        # どのユーザーとチャットするかを取得。
        @customer = Customer.find(params[:id])
        # カレントユーザーのuser_roomにあるroom_idの値の配列をroomsに代入。
        rooms = current_customer.user_rooms.pluck(:room_id)
        # user_roomモデルから
        # user_idがチャット相手のidが一致するものと、
        # room_idが上記roomsのどれかに一致するレコードを
        # user_roomsに代入。
        user_rooms = UserRoom.find_by(customer_id: @customer.id, room_id: rooms)
        # もしuser_roomが空でないなら
        unless user_rooms.nil?
        # @roomに上記user_roomのroomを代入
        @room = user_rooms.room
        else
          # それ以外は新しくroomを作り、
          @room = Room.new
          @room.save
          # user_roomをカレントユーザー分とチャット相手分を作る
          UserRoom.create(customer_id: current_customer.id, room_id: @room.id)
          UserRoom.create(customer_id: @customer.id, room_id: @room.id)
        end
        @chats = @room.chats
        @chat = Chat.new(room_id: @room.id)

      else
        @customer = Customer.find(params[:id])
       # binding.pry
        rooms = current_admin.id
        user_rooms = UserRoom.find_by(customer_id: @customer.id, room_id: rooms)
        unless user_rooms.nil?
        @room = user_rooms.room
        else
          @room = Room.new
          @room.save
        #  UserRoom.create(admin_id: current_admin.id, room_id: @room.id)
        #  UserRoom.create(admin_id: @customer.id, room_id: @room.id)
        end
        @chats = @room.chats
        @chat = Chat.new(room_id: @room.id)

      end
    end
    def create
      if customer_signed_in?
        @chat = current_customer.chats.new(chat_params)
        @chat.save
        redirect_to request.referer
      else
        @chat = current_admin.chats.new(chat_params)
        @chat.save
        redirect_to request.referer
      end
    end

    private
    def chat_params
      params.require(:chat).permit(:message, :room_id, :admin_id)
    end
end
