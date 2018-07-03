require "application_system_test_case"

class ScanAttStocksTest < ApplicationSystemTestCase
  setup do
    @scan_att_stock = scan_att_stocks(:one)
  end

  test "visiting the index" do
    visit scan_att_stocks_url
    assert_selector "h1", text: "Scan Att Stocks"
  end

  test "creating a Scan att stock" do
    visit scan_att_stocks_url
    click_on "New Scan Att Stock"

    fill_in "Au", with: @scan_att_stock.au
    fill_in "Du", with: @scan_att_stock.du
    fill_in "Filepath", with: @scan_att_stock.filepath
    fill_in "Qty", with: @scan_att_stock.qty
    fill_in "Type", with: @scan_att_stock.type
    click_on "Create Scan att stock"

    assert_text "Scan att stock was successfully created"
    click_on "Back"
  end

  test "updating a Scan att stock" do
    visit scan_att_stocks_url
    click_on "Edit", match: :first

    fill_in "Au", with: @scan_att_stock.au
    fill_in "Du", with: @scan_att_stock.du
    fill_in "Filepath", with: @scan_att_stock.filepath
    fill_in "Qty", with: @scan_att_stock.qty
    fill_in "Type", with: @scan_att_stock.type
    click_on "Update Scan att stock"

    assert_text "Scan att stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Scan att stock" do
    visit scan_att_stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scan att stock was successfully destroyed"
  end
end
