require 'test_helper'

class NimblesControllerTest < ActionController::TestCase
  setup do
    @nimble = nimbles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nimbles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nimble" do
    assert_difference('Nimble.count') do
      post :create, :nimble => { :content => @nimble.content, :user_id => @nimble.user_id }
    end

    assert_redirected_to nimble_path(assigns(:nimble))
  end

  test "should show nimble" do
    get :show, :id => @nimble
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nimble
    assert_response :success
  end

  test "should update nimble" do
    put :update, :id => @nimble, :nimble => { :content => @nimble.content, :user_id => @nimble.user_id }
    assert_redirected_to nimble_path(assigns(:nimble))
  end

  test "should destroy nimble" do
    assert_difference('Nimble.count', -1) do
      delete :destroy, :id => @nimble
    end

    assert_redirected_to nimbles_path
  end
end
