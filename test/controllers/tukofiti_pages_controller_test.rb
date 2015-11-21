require 'test_helper'

class TukofitiPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | TukoFiti - Health and Fun Redefined"
  end

  test "should get user" do
    get :user
    assert_response :success
    assert_select "title", "User | TukoFiti - Health and Fun Redefined"
  end

  test "should get profile" do
    get :profile
    assert_response :success
    assert_select "title", "Profile | TukoFiti - Health and Fun Redefined"
  end

  test "should get progress" do
    get :progress
    assert_response :success
    assert_select "title", "Progress | TukoFiti - Health and Fun Redefined"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | TukoFiti - Health and Fun Redefined"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | TukoFiti - Health and Fun Redefined"
  end

end
