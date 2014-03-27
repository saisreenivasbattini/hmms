require 'test_helper'

class MmRangesControllerTest < ActionController::TestCase
  setup do
    @mm_range = mm_ranges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mm_ranges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mm_range" do
    assert_difference('MmRange.count') do
      post :create, mm_range: { high: @mm_range.high, low: @mm_range.low }
    end

    assert_redirected_to mm_range_path(assigns(:mm_range))
  end

  test "should show mm_range" do
    get :show, id: @mm_range
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mm_range
    assert_response :success
  end

  test "should update mm_range" do
    patch :update, id: @mm_range, mm_range: { high: @mm_range.high, low: @mm_range.low }
    assert_redirected_to mm_range_path(assigns(:mm_range))
  end

  test "should destroy mm_range" do
    assert_difference('MmRange.count', -1) do
      delete :destroy, id: @mm_range
    end

    assert_redirected_to mm_ranges_path
  end
end
