require 'test_helper'

class PublicInfosControllerTest < ActionController::TestCase
  setup do
    @public_info = public_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_info" do
    assert_difference('PublicInfo.count') do
      post :create, public_info: { avg_annual_collection: @public_info.avg_annual_collection, avg_annual_visits: @public_info.avg_annual_visits, practice_name: @public_info.practice_name }
    end

    assert_redirected_to public_info_path(assigns(:public_info))
  end

  test "should show public_info" do
    get :show, id: @public_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_info
    assert_response :success
  end

  test "should update public_info" do
    patch :update, id: @public_info, public_info: { avg_annual_collection: @public_info.avg_annual_collection, avg_annual_visits: @public_info.avg_annual_visits, practice_name: @public_info.practice_name }
    assert_redirected_to public_info_path(assigns(:public_info))
  end

  test "should destroy public_info" do
    assert_difference('PublicInfo.count', -1) do
      delete :destroy, id: @public_info
    end

    assert_redirected_to public_infos_path
  end
end
