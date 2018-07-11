require "application_system_test_case"

class SouscripteursTest < ApplicationSystemTestCase
  setup do
    @souscripteur = souscripteurs(:one)
  end

  test "visiting the index" do
    visit souscripteurs_url
    assert_selector "h1", text: "Souscripteurs"
  end

  test "creating a Souscripteur" do
    visit souscripteurs_url
    click_on "New Souscripteur"

    fill_in "Nom", with: @souscripteur.nom
    fill_in "Titre", with: @souscripteur.titre
    click_on "Create Souscripteur"

    assert_text "Souscripteur was successfully created"
    click_on "Back"
  end

  test "updating a Souscripteur" do
    visit souscripteurs_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @souscripteur.nom
    fill_in "Titre", with: @souscripteur.titre
    click_on "Update Souscripteur"

    assert_text "Souscripteur was successfully updated"
    click_on "Back"
  end

  test "destroying a Souscripteur" do
    visit souscripteurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Souscripteur was successfully destroyed"
  end
end
