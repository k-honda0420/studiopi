require 'test_helper'

class Public::CalendarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_calendars_index_url
    assert_response :success
  end

  test "should get show" do
    get public_calendars_show_url
    assert_response :success
  end

end
