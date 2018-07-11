require "application_system_test_case"

class VehiculesTest < ApplicationSystemTestCase
  setup do
    @vehicule = vehicules(:one)
  end

  test "visiting the index" do
    visit vehicules_url
    assert_selector "h1", text: "Vehicules"
  end

  test "creating a Vehicule" do
    visit vehicules_url
    click_on "New Vehicule"

    fill_in "Address", with: @vehicule.address
    fill_in "Carburant", with: @vehicule.carburant
    fill_in "Chassis", with: @vehicule.chassis
    fill_in "Cv", with: @vehicule.cv
    fill_in "Cylindre", with: @vehicule.cylindre
    fill_in "Date Mc", with: @vehicule.date_mc
    fill_in "Date Mc Maroc", with: @vehicule.date_mc_maroc
    fill_in "Date Mutation", with: @vehicule.date_mutation
    fill_in "Date Val Cgrise", with: @vehicule.date_val_cgrise
    fill_in "Genre", with: @vehicule.genre
    fill_in "Marque", with: @vehicule.marque
    fill_in "Matricule", with: @vehicule.matricule
    fill_in "Matricule Ant", with: @vehicule.matricule_ant
    fill_in "Modele", with: @vehicule.modele
    fill_in "Place", with: @vehicule.place
    fill_in "Poids", with: @vehicule.poids
    fill_in "Proprietaire", with: @vehicule.proprietaire
    fill_in "Ptac", with: @vehicule.ptac
    fill_in "Ptmct", with: @vehicule.ptmct
    fill_in "Type Cgrise", with: @vehicule.type_cgrise
    fill_in "Usage", with: @vehicule.usage
    click_on "Create Vehicule"

    assert_text "Vehicule was successfully created"
    click_on "Back"
  end

  test "updating a Vehicule" do
    visit vehicules_url
    click_on "Edit", match: :first

    fill_in "Address", with: @vehicule.address
    fill_in "Carburant", with: @vehicule.carburant
    fill_in "Chassis", with: @vehicule.chassis
    fill_in "Cv", with: @vehicule.cv
    fill_in "Cylindre", with: @vehicule.cylindre
    fill_in "Date Mc", with: @vehicule.date_mc
    fill_in "Date Mc Maroc", with: @vehicule.date_mc_maroc
    fill_in "Date Mutation", with: @vehicule.date_mutation
    fill_in "Date Val Cgrise", with: @vehicule.date_val_cgrise
    fill_in "Genre", with: @vehicule.genre
    fill_in "Marque", with: @vehicule.marque
    fill_in "Matricule", with: @vehicule.matricule
    fill_in "Matricule Ant", with: @vehicule.matricule_ant
    fill_in "Modele", with: @vehicule.modele
    fill_in "Place", with: @vehicule.place
    fill_in "Poids", with: @vehicule.poids
    fill_in "Proprietaire", with: @vehicule.proprietaire
    fill_in "Ptac", with: @vehicule.ptac
    fill_in "Ptmct", with: @vehicule.ptmct
    fill_in "Type Cgrise", with: @vehicule.type_cgrise
    fill_in "Usage", with: @vehicule.usage
    click_on "Update Vehicule"

    assert_text "Vehicule was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicule" do
    visit vehicules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicule was successfully destroyed"
  end
end
