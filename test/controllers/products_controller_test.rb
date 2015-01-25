require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get history" do
    get :history
    assert_response :success
  end

  test "should get status" do
    get :status
    assert_response :success
  end

  test "should get prerent" do
    get :prerent
    assert_response :success
  end

  test "should get rent" do
    get :rent
    assert_response :success
  end

  test "should get prereturn" do
    get :prereturn
    assert_response :success
  end

  test "should get return" do
    get :return
    assert_response :success
  end

end
