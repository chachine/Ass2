require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { address: @client.address, cat_permis: @client.cat_permis, cin: @client.cin, date_naissance: @client.date_naissance, date_permis: @client.date_permis, date_val_cin: @client.date_val_cin, date_val_permis: @client.date_val_permis, lieu_naissance: @client.lieu_naissance, lieu_permis: @client.lieu_permis, nom: @client.nom, num_permis: @client.num_permis, pays: @client.pays, prenom: @client.prenom, sexe: @client.sexe, ville: @client.ville } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { address: @client.address, cat_permis: @client.cat_permis, cin: @client.cin, date_naissance: @client.date_naissance, date_permis: @client.date_permis, date_val_cin: @client.date_val_cin, date_val_permis: @client.date_val_permis, lieu_naissance: @client.lieu_naissance, lieu_permis: @client.lieu_permis, nom: @client.nom, num_permis: @client.num_permis, pays: @client.pays, prenom: @client.prenom, sexe: @client.sexe, ville: @client.ville } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
