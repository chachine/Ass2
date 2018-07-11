require 'test_helper'

class SouscripteursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @souscripteur = souscripteurs(:one)
  end

  test "should get index" do
    get souscripteurs_url
    assert_response :success
  end

  test "should get new" do
    get new_souscripteur_url
    assert_response :success
  end

  test "should create souscripteur" do
    assert_difference('Souscripteur.count') do
      post souscripteurs_url, params: { souscripteur: { nom: @souscripteur.nom, titre: @souscripteur.titre } }
    end

    assert_redirected_to souscripteur_url(Souscripteur.last)
  end

  test "should show souscripteur" do
    get souscripteur_url(@souscripteur)
    assert_response :success
  end

  test "should get edit" do
    get edit_souscripteur_url(@souscripteur)
    assert_response :success
  end

  test "should update souscripteur" do
    patch souscripteur_url(@souscripteur), params: { souscripteur: { nom: @souscripteur.nom, titre: @souscripteur.titre } }
    assert_redirected_to souscripteur_url(@souscripteur)
  end

  test "should destroy souscripteur" do
    assert_difference('Souscripteur.count', -1) do
      delete souscripteur_url(@souscripteur)
    end

    assert_redirected_to souscripteurs_url
  end
end
