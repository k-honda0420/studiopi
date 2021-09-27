require 'test_helper'

class Public::ChatRoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_chat_rooms_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_chat_rooms_edit_url
    assert_response :success
  end

end
