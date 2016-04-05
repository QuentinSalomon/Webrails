require 'test_helper'

class PortablesControllerTest < ActionController::TestCase
  setup do
    @portable = portables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portable" do
    assert_difference('Portable.count') do
      post :create, portable: { etudiant_id: @portable.etudiant_id, marque: @portable.marque, no_serie: @portable.no_serie }
    end

    assert_redirected_to portable_path(assigns(:portable))
  end

  test "should show portable" do
    get :show, id: @portable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portable
    assert_response :success
  end

  test "should update portable" do
    patch :update, id: @portable, portable: { etudiant_id: @portable.etudiant_id, marque: @portable.marque, no_serie: @portable.no_serie }
    assert_redirected_to portable_path(assigns(:portable))
  end

  test "should destroy portable" do
    assert_difference('Portable.count', -1) do
      delete :destroy, id: @portable
    end

    assert_redirected_to portables_path
  end
end
