require 'test_helper'

class SequenceCreatedsControllerTest < ActionController::TestCase
  setup do
    @sequence_created = sequence_createds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sequence_createds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sequence_created" do
    assert_difference('SequenceCreated.count') do
      post :create, :sequence_created => { }
    end

    assert_redirected_to sequence_created_path(assigns(:sequence_created))
  end

#  test "should create sequence_created" do
#    assert_difference('SequenceCreated.count') do
#      post :create, :sequence_created => @sequence_created.attributes
#    end

#    assert_redirected_to sequence_created_path(assigns(:sequence_created))
#  end

  test "should show sequence_created" do
    get :show, :id => @sequence_created.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sequence_created.to_param
    assert_response :success
  end

  test "should update sequence_created" do
    put :update, :id => @sequence_created.to_param, :sequence_created => @sequence_created.attributes
    assert_redirected_to sequence_created_path(assigns(:sequence_created))
  end

  test "should destroy sequence_created" do
    assert_difference('SequenceCreated.count', -1) do
      delete :destroy, :id => @sequence_created.to_param
    end

    assert_redirected_to sequence_createds_path
  end
end
