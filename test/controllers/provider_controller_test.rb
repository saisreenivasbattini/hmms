require 'test_helper'

class ProviderControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

end
