require 'test_helper'

class SingularsControllerTest < ActionController::TestCase

#  test "should get list" do
#    get :list
#    assert_response :success
#    assert_not_nil assigns(:sequences)
#  end

  test "should get display" do
    get :display
    assert_response :success
  end

end
