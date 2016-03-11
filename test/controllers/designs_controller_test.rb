require 'test_helper'

class DesignsControllerTest < ActionController::TestCase
  setup do
    @design = designs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create design" do
    assert_difference('Design.count') do
      post :create, design: { : @design., client: @design.client, contruction_time: @design.contruction_time, description: @design.description, design_time: @design.design_time, image: @design.image, location: @design.location, title: @design.title }
    end

    assert_redirected_to design_path(assigns(:design))
  end

  test "should show design" do
    get :show, id: @design
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @design
    assert_response :success
  end

  test "should update design" do
    patch :update, id: @design, design: { : @design., client: @design.client, contruction_time: @design.contruction_time, description: @design.description, design_time: @design.design_time, image: @design.image, location: @design.location, title: @design.title }
    assert_redirected_to design_path(assigns(:design))
  end

  test "should destroy design" do
    assert_difference('Design.count', -1) do
      delete :destroy, id: @design
    end

    assert_redirected_to designs_path
  end
end
