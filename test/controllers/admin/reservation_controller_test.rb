require 'test_helper'

class Admin::ReservationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_reservation_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_reservation_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_reservation_edit_url
    assert_response :success
  end

end
