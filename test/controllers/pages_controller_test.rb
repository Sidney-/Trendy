require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get location" do
    get :location
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get returns" do
    get :returns
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
