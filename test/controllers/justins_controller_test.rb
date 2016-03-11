require 'test_helper'

class JustinsControllerTest < ActionController::TestCase
  setup do
    @justin = justins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:justins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create justin" do
    assert_difference('Justin.count') do
      post :create, justin: { body: @justin.body, title: @justin.title }
    end

    assert_redirected_to justin_path(assigns(:justin))
  end

  test "should show justin" do
    get :show, id: @justin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @justin
    assert_response :success
  end

  test "should update justin" do
    patch :update, id: @justin, justin: { body: @justin.body, title: @justin.title }
    assert_redirected_to justin_path(assigns(:justin))
  end

  test "should destroy justin" do
    assert_difference('Justin.count', -1) do
      delete :destroy, id: @justin
    end

    assert_redirected_to justins_path
  end
end
