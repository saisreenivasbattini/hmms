require 'test_helper'

class ConfidentialInfosControllerTest < ActionController::TestCase
  setup do
    @confidential_info = confidential_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confidential_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confidential_info" do
    assert_difference('ConfidentialInfo.count') do
      post :create, confidential_info: { address1: @confidential_info.address1, address2: @confidential_info.address2, city: @confidential_info.city, email: @confidential_info.email, phone: @confidential_info.phone, practice_name: @confidential_info.practice_name, qualified_info_id: @confidential_info.qualified_info_id, state: @confidential_info.state }
    end

    assert_redirected_to confidential_info_path(assigns(:confidential_info))
  end

  test "should show confidential_info" do
    get :show, id: @confidential_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confidential_info
    assert_response :success
  end

  test "should update confidential_info" do
    patch :update, id: @confidential_info, confidential_info: { address1: @confidential_info.address1, address2: @confidential_info.address2, city: @confidential_info.city, email: @confidential_info.email, phone: @confidential_info.phone, practice_name: @confidential_info.practice_name, qualified_info_id: @confidential_info.qualified_info_id, state: @confidential_info.state }
    assert_redirected_to confidential_info_path(assigns(:confidential_info))
  end

  test "should destroy confidential_info" do
    assert_difference('ConfidentialInfo.count', -1) do
      delete :destroy, id: @confidential_info
    end

    assert_redirected_to confidential_infos_path
  end
end
