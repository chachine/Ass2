require 'test_helper'

class VehiculesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicule = vehicules(:one)
  end

  test "should get index" do
    get vehicules_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicule_url
    assert_response :success
  end

  test "should create vehicule" do
    assert_difference('Vehicule.count') do
      post vehicules_url, params: { vehicule: { address: @vehicule.address, carburant: @vehicule.carburant, chassis: @vehicule.chassis, cv: @vehicule.cv, cylindre: @vehicule.cylindre, date_mc: @vehicule.date_mc, date_mc_maroc: @vehicule.date_mc_maroc, date_mutation: @vehicule.date_mutation, date_val_cgrise: @vehicule.date_val_cgrise, genre: @vehicule.genre, marque: @vehicule.marque, matricule: @vehicule.matricule, matricule_ant: @vehicule.matricule_ant, modele: @vehicule.modele, place: @vehicule.place, poids: @vehicule.poids, proprietaire: @vehicule.proprietaire, ptac: @vehicule.ptac, ptmct: @vehicule.ptmct, type_cgrise: @vehicule.type_cgrise, usage: @vehicule.usage } }
    end

    assert_redirected_to vehicule_url(Vehicule.last)
  end

  test "should show vehicule" do
    get vehicule_url(@vehicule)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicule_url(@vehicule)
    assert_response :success
  end

  test "should update vehicule" do
    patch vehicule_url(@vehicule), params: { vehicule: { address: @vehicule.address, carburant: @vehicule.carburant, chassis: @vehicule.chassis, cv: @vehicule.cv, cylindre: @vehicule.cylindre, date_mc: @vehicule.date_mc, date_mc_maroc: @vehicule.date_mc_maroc, date_mutation: @vehicule.date_mutation, date_val_cgrise: @vehicule.date_val_cgrise, genre: @vehicule.genre, marque: @vehicule.marque, matricule: @vehicule.matricule, matricule_ant: @vehicule.matricule_ant, modele: @vehicule.modele, place: @vehicule.place, poids: @vehicule.poids, proprietaire: @vehicule.proprietaire, ptac: @vehicule.ptac, ptmct: @vehicule.ptmct, type_cgrise: @vehicule.type_cgrise, usage: @vehicule.usage } }
    assert_redirected_to vehicule_url(@vehicule)
  end

  test "should destroy vehicule" do
    assert_difference('Vehicule.count', -1) do
      delete vehicule_url(@vehicule)
    end

    assert_redirected_to vehicules_url
  end
end
