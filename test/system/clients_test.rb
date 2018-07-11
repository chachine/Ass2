require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Address", with: @client.address
    fill_in "Cat Permis", with: @client.cat_permis
    fill_in "Cin", with: @client.cin
    fill_in "Date Naissance", with: @client.date_naissance
    fill_in "Date Permis", with: @client.date_permis
    fill_in "Date Val Cin", with: @client.date_val_cin
    fill_in "Date Val Permis", with: @client.date_val_permis
    fill_in "Lieu Naissance", with: @client.lieu_naissance
    fill_in "Lieu Permis", with: @client.lieu_permis
    fill_in "Nom", with: @client.nom
    fill_in "Num Permis", with: @client.num_permis
    fill_in "Pays", with: @client.pays
    fill_in "Prenom", with: @client.prenom
    fill_in "Sexe", with: @client.sexe
    fill_in "Ville", with: @client.ville
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Address", with: @client.address
    fill_in "Cat Permis", with: @client.cat_permis
    fill_in "Cin", with: @client.cin
    fill_in "Date Naissance", with: @client.date_naissance
    fill_in "Date Permis", with: @client.date_permis
    fill_in "Date Val Cin", with: @client.date_val_cin
    fill_in "Date Val Permis", with: @client.date_val_permis
    fill_in "Lieu Naissance", with: @client.lieu_naissance
    fill_in "Lieu Permis", with: @client.lieu_permis
    fill_in "Nom", with: @client.nom
    fill_in "Num Permis", with: @client.num_permis
    fill_in "Pays", with: @client.pays
    fill_in "Prenom", with: @client.prenom
    fill_in "Sexe", with: @client.sexe
    fill_in "Ville", with: @client.ville
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
