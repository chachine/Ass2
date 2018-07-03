require "application_system_test_case"

class AttAtocksTest < ApplicationSystemTestCase
  setup do
    @att_atock = att_atocks(:one)
  end

  test "visiting the index" do
    visit att_atocks_url
    assert_selector "h1", text: "Att Atocks"
  end

  test "creating a Att atock" do
    visit att_atocks_url
    click_on "New Att Atock"

    fill_in "Numero", with: @att_atock.numero
    fill_in "Type", with: @att_atock.type
    fill_in "Used", with: @att_atock.used
    click_on "Create Att atock"

    assert_text "Att atock was successfully created"
    click_on "Back"
  end

  test "updating a Att atock" do
    visit att_atocks_url
    click_on "Edit", match: :first

    fill_in "Numero", with: @att_atock.numero
    fill_in "Type", with: @att_atock.type
    fill_in "Used", with: @att_atock.used
    click_on "Update Att atock"

    assert_text "Att atock was successfully updated"
    click_on "Back"
  end

  test "destroying a Att atock" do
    visit att_atocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Att atock was successfully destroyed"
  end
end
