require 'test_helper'

class AttAtocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @att_atock = att_atocks(:one)
  end

  test "should get index" do
    get att_atocks_url
    assert_response :success
  end

  test "should get new" do
    get new_att_atock_url
    assert_response :success
  end

  test "should create att_atock" do
    assert_difference('AttAtock.count') do
      post att_atocks_url, params: { att_atock: { numero: @att_atock.numero, type: @att_atock.type, used: @att_atock.used } }
    end

    assert_redirected_to att_atock_url(AttAtock.last)
  end

  test "should show att_atock" do
    get att_atock_url(@att_atock)
    assert_response :success
  end

  test "should get edit" do
    get edit_att_atock_url(@att_atock)
    assert_response :success
  end

  test "should update att_atock" do
    patch att_atock_url(@att_atock), params: { att_atock: { numero: @att_atock.numero, type: @att_atock.type, used: @att_atock.used } }
    assert_redirected_to att_atock_url(@att_atock)
  end

  test "should destroy att_atock" do
    assert_difference('AttAtock.count', -1) do
      delete att_atock_url(@att_atock)
    end

    assert_redirected_to att_atocks_url
  end
end
