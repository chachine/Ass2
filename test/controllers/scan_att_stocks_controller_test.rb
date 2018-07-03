require 'test_helper'

class ScanAttStocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scan_att_stock = scan_att_stocks(:one)
  end

  test "should get index" do
    get scan_att_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_scan_att_stock_url
    assert_response :success
  end

  test "should create scan_att_stock" do
    assert_difference('ScanAttStock.count') do
      post scan_att_stocks_url, params: { scan_att_stock: { au: @scan_att_stock.au, du: @scan_att_stock.du, filepath: @scan_att_stock.filepath, qty: @scan_att_stock.qty, type: @scan_att_stock.type } }
    end

    assert_redirected_to scan_att_stock_url(ScanAttStock.last)
  end

  test "should show scan_att_stock" do
    get scan_att_stock_url(@scan_att_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_scan_att_stock_url(@scan_att_stock)
    assert_response :success
  end

  test "should update scan_att_stock" do
    patch scan_att_stock_url(@scan_att_stock), params: { scan_att_stock: { au: @scan_att_stock.au, du: @scan_att_stock.du, filepath: @scan_att_stock.filepath, qty: @scan_att_stock.qty, type: @scan_att_stock.type } }
    assert_redirected_to scan_att_stock_url(@scan_att_stock)
  end

  test "should destroy scan_att_stock" do
    assert_difference('ScanAttStock.count', -1) do
      delete scan_att_stock_url(@scan_att_stock)
    end

    assert_redirected_to scan_att_stocks_url
  end
end
