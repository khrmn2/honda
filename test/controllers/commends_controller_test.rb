require 'test_helper'

class CommendsControllerTest < ActionController::TestCase
  setup do
    @commend = commends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commend" do
    assert_difference('Commend.count') do
      post :create, commend: { content: @commend.content, model: @commend.model, motor: @commend.motor, yıl: @commend.yıl }
    end

    assert_redirected_to commend_path(assigns(:commend))
  end

  test "should show commend" do
    get :show, id: @commend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commend
    assert_response :success
  end

  test "should update commend" do
    patch :update, id: @commend, commend: { content: @commend.content, model: @commend.model, motor: @commend.motor, yıl: @commend.yıl }
    assert_redirected_to commend_path(assigns(:commend))
  end

  test "should destroy commend" do
    assert_difference('Commend.count', -1) do
      delete :destroy, id: @commend
    end

    assert_redirected_to commends_path
  end
end
