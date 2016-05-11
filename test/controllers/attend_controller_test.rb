require 'test_helper'

class AttendControllerTest < ActionController::TestCase
  test "should get result" do
    get :result
    assert_response :success
  end

  test "should get check" do
    get :check
    assert_response :success
  end

  test "should get ranking" do
    get :ranking
    assert_response :success
  end

end
