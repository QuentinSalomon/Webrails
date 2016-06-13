require 'test_helper'

class VehiculsControllerTest < ActionController::TestCase
  setup do
    @vehicul = vehiculs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehiculs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicul" do
    assert_difference('Vehicul.count') do
      post :create, vehicul: { brand: @vehicul.brand, category: @vehicul.category, km: @vehicul.km, name: @vehicul.name, user_id: @vehicul.user_id }
    end

    assert_redirected_to vehicul_path(assigns(:vehicul))
  end

  test "should show vehicul" do
    get :show, id: @vehicul
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicul
    assert_response :success
  end

  test "should update vehicul" do
    patch :update, id: @vehicul, vehicul: { brand: @vehicul.brand, category: @vehicul.category, km: @vehicul.km, name: @vehicul.name, user_id: @vehicul.user_id }
    assert_redirected_to vehicul_path(assigns(:vehicul))
  end

  test "should destroy vehicul" do
    assert_difference('Vehicul.count', -1) do
      delete :destroy, id: @vehicul
    end

    assert_redirected_to vehiculs_path
  end
end
