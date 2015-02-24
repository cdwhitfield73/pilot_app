require 'test_helper'

class BalloonsControllerTest < ActionController::TestCase
  setup do
    @balloon = balloons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:balloons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create balloon" do
    assert_difference('Balloon.count') do
      post :create, balloon: { name: @balloon.name, number: @balloon.number, size: @balloon.size }
    end

    assert_redirected_to balloon_path(assigns(:balloon))
  end

  test "should show balloon" do
    get :show, id: @balloon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @balloon
    assert_response :success
  end

  test "should update balloon" do
    patch :update, id: @balloon, balloon: { name: @balloon.name, number: @balloon.number, size: @balloon.size }
    assert_redirected_to balloon_path(assigns(:balloon))
  end

  test "should destroy balloon" do
    assert_difference('Balloon.count', -1) do
      delete :destroy, id: @balloon
    end

    assert_redirected_to balloons_path
  end
end
