require 'test_helper'

class EusersControllerTest < ActionController::TestCase
  setup do
    @euser = eusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create euser" do
    assert_difference('Euser.count') do
      post :create, euser: { email: @euser.email, login: @euser.login, name: @euser.name }
    end

    assert_redirected_to euser_path(assigns(:euser))
  end

  test "should show euser" do
    get :show, id: @euser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @euser
    assert_response :success
  end

  test "should update euser" do
    patch :update, id: @euser, euser: { email: @euser.email, login: @euser.login, name: @euser.name }
    assert_redirected_to euser_path(assigns(:euser))
  end

  test "should destroy euser" do
    assert_difference('Euser.count', -1) do
      delete :destroy, id: @euser
    end

    assert_redirected_to eusers_path
  end
end
