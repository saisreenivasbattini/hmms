require 'test_helper'

class PublicInformationsControllerTest < ActionController::TestCase
  setup do
    @public_information = public_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_information" do
    assert_difference('PublicInformation.count') do
      post :create, public_information: { avg_annual_collection: @public_information.avg_annual_collection, avg_annual_visits: @public_information.avg_annual_visits, practice_name: @public_information.practice_name, region_id: @public_information.region_id, state_id: @public_information.state_id }
    end

    assert_redirected_to public_information_path(assigns(:public_information))
  end

  test "should show public_information" do
    get :show, id: @public_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_information
    assert_response :success
  end

  test "should update public_information" do
    patch :update, id: @public_information, public_information: { avg_annual_collection: @public_information.avg_annual_collection, avg_annual_visits: @public_information.avg_annual_visits, practice_name: @public_information.practice_name, region_id: @public_information.region_id, state_id: @public_information.state_id }
    assert_redirected_to public_information_path(assigns(:public_information))
  end

  test "should destroy public_information" do
    assert_difference('PublicInformation.count', -1) do
      delete :destroy, id: @public_information
    end

    assert_redirected_to public_informations_path
  end
end
