require 'test_helper'

class CompletesControllerTest < ActionController::TestCase

#  test "should get list" do
#    get :list
#    assert_response :success
#  end

  test "should get display" do
    get :display
    assert_response :success
  end

end
