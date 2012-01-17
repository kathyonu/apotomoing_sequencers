require 'test_helper'

class SingularsControllerTest < ActionController::TestCase
  setup do
    @sequencetext = "test"
    @sequences = sequences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sequences)
  end

  test "should get display" do
    get :display
    assert_response :success
  end

end
