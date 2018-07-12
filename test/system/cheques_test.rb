require "application_system_test_case"

class ChequesTest < ApplicationSystemTestCase
  setup do
    @cheque = cheques(:one)
  end

  test "visiting the index" do
    visit cheques_url
    assert_selector "h1", text: "Cheques"
  end

  test "creating a Cheque" do
    visit cheques_url
    click_on "New Cheque"

    fill_in "Banque", with: @cheque.banque
    fill_in "Date Encaissement", with: @cheque.date_encaissement
    fill_in "Date Reception", with: @cheque.date_reception
    fill_in "Etat", with: @cheque.etat
    fill_in "Montant", with: @cheque.montant
    fill_in "Nom", with: @cheque.nom
    fill_in "Numero", with: @cheque.numero
    click_on "Create Cheque"

    assert_text "Cheque was successfully created"
    click_on "Back"
  end

  test "updating a Cheque" do
    visit cheques_url
    click_on "Edit", match: :first

    fill_in "Banque", with: @cheque.banque
    fill_in "Date Encaissement", with: @cheque.date_encaissement
    fill_in "Date Reception", with: @cheque.date_reception
    fill_in "Etat", with: @cheque.etat
    fill_in "Montant", with: @cheque.montant
    fill_in "Nom", with: @cheque.nom
    fill_in "Numero", with: @cheque.numero
    click_on "Update Cheque"

    assert_text "Cheque was successfully updated"
    click_on "Back"
  end

  test "destroying a Cheque" do
    visit cheques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cheque was successfully destroyed"
  end
end
