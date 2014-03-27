require 'test_helper'

class QualifiedInfosControllerTest < ActionController::TestCase
  setup do
    @qualified_info = qualified_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualified_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualified_info" do
    assert_difference('QualifiedInfo.count') do
      post :create, qualified_info: { asking_price: @qualified_info.asking_price, physician_net_amount: @qualified_info.physician_net_amount, public_information_id: @qualified_info.public_information_id }
    end

    assert_redirected_to qualified_info_path(assigns(:qualified_info))
  end

  test "should show qualified_info" do
    get :show, id: @qualified_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualified_info
    assert_response :success
  end

  test "should update qualified_info" do
    patch :update, id: @qualified_info, qualified_info: { asking_price: @qualified_info.asking_price, physician_net_amount: @qualified_info.physician_net_amount, public_information_id: @qualified_info.public_information_id }
    assert_redirected_to qualified_info_path(assigns(:qualified_info))
  end

  test "should destroy qualified_info" do
    assert_difference('QualifiedInfo.count', -1) do
      delete :destroy, id: @qualified_info
    end

    assert_redirected_to qualified_infos_path
  end
end
