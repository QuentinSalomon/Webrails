require 'test_helper'

class PrenomsControllerTest < ActionController::TestCase
  setup do
    @prenom = prenoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prenoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prenom" do
    assert_difference('Prenom.count') do
      post :create, prenom: { texte: @prenom.texte }
    end

    assert_redirected_to prenom_path(assigns(:prenom))
  end

  test "should show prenom" do
    get :show, id: @prenom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prenom
    assert_response :success
  end

  test "should update prenom" do
    patch :update, id: @prenom, prenom: { texte: @prenom.texte }
    assert_redirected_to prenom_path(assigns(:prenom))
  end

  test "should destroy prenom" do
    assert_difference('Prenom.count', -1) do
      delete :destroy, id: @prenom
    end

    assert_redirected_to prenoms_path
  end
end
