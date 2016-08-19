require 'test_helper'

class PostfsControllerTest < ActionController::TestCase
  setup do
    @postf = postfs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postfs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postf" do
    assert_difference('Postf.count') do
      post :create, postf: { content: @postf.content, title: @postf.title }
    end

    assert_redirected_to postf_path(assigns(:postf))
  end

  test "should show postf" do
    get :show, id: @postf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postf
    assert_response :success
  end

  test "should update postf" do
    patch :update, id: @postf, postf: { content: @postf.content, title: @postf.title }
    assert_redirected_to postf_path(assigns(:postf))
  end

  test "should destroy postf" do
    assert_difference('Postf.count', -1) do
      delete :destroy, id: @postf
    end

    assert_redirected_to postfs_path
  end
end
