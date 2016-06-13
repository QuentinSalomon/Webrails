require 'test_helper'

class GasTypesControllerTest < ActionController::TestCase
  setup do
    @gas_type = gas_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gas_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gas_type" do
    assert_difference('GasType.count') do
      post :create, gas_type: { name: @gas_type.name }
    end

    assert_redirected_to gas_type_path(assigns(:gas_type))
  end

  test "should show gas_type" do
    get :show, id: @gas_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gas_type
    assert_response :success
  end

  test "should update gas_type" do
    patch :update, id: @gas_type, gas_type: { name: @gas_type.name }
    assert_redirected_to gas_type_path(assigns(:gas_type))
  end

  test "should destroy gas_type" do
    assert_difference('GasType.count', -1) do
      delete :destroy, id: @gas_type
    end

    assert_redirected_to gas_types_path
  end
end
