require 'test_helper'

class TextsControllerTest < ActionController::TestCase
  setup do
    @sequencetext = "test"
    @sequences = sequences(:one)
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get display" do
    get :display
    assert_response :success
  end

end
