require 'test_helper'

class TukofitiPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get progress" do
    get :progress
    assert_response :success
  end

end
