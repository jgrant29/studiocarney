require 'test_helper'

class DesignImageAttachmentsControllerTest < ActionController::TestCase
  setup do
    @design_image_attachment = design_image_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:design_image_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create design_image_attachment" do
    assert_difference('DesignImageAttachment.count') do
      post :create, design_image_attachment: { image: @design_image_attachment.image }
    end

    assert_redirected_to design_image_attachment_path(assigns(:design_image_attachment))
  end

  test "should show design_image_attachment" do
    get :show, id: @design_image_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @design_image_attachment
    assert_response :success
  end

  test "should update design_image_attachment" do
    patch :update, id: @design_image_attachment, design_image_attachment: { image: @design_image_attachment.image }
    assert_redirected_to design_image_attachment_path(assigns(:design_image_attachment))
  end

  test "should destroy design_image_attachment" do
    assert_difference('DesignImageAttachment.count', -1) do
      delete :destroy, id: @design_image_attachment
    end

    assert_redirected_to design_image_attachments_path
  end
end
