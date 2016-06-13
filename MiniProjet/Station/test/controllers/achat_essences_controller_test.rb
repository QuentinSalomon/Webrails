require 'test_helper'

class AchatEssencesControllerTest < ActionController::TestCase
  setup do
    @achat_essence = achat_essences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:achat_essences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create achat_essence" do
    assert_difference('AchatEssence.count') do
      post :create, achat_essence: { gas_station_id: @achat_essence.gas_station_id, km_traveled: @achat_essence.km_traveled, liters: @achat_essence.liters, price_per_liter: @achat_essence.price_per_liter, vehicul_id: @achat_essence.vehicul_id }
    end

    assert_redirected_to achat_essence_path(assigns(:achat_essence))
  end

  test "should show achat_essence" do
    get :show, id: @achat_essence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @achat_essence
    assert_response :success
  end

  test "should update achat_essence" do
    patch :update, id: @achat_essence, achat_essence: { gas_station_id: @achat_essence.gas_station_id, km_traveled: @achat_essence.km_traveled, liters: @achat_essence.liters, price_per_liter: @achat_essence.price_per_liter, vehicul_id: @achat_essence.vehicul_id }
    assert_redirected_to achat_essence_path(assigns(:achat_essence))
  end

  test "should destroy achat_essence" do
    assert_difference('AchatEssence.count', -1) do
      delete :destroy, id: @achat_essence
    end

    assert_redirected_to achat_essences_path
  end
end
