require 'test_helper'

class PostFsControllerTest < ActionController::TestCase
  setup do
    @post_f = post_fs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_fs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_f" do
    assert_difference('PostF.count') do
      post :create, post_f: { description: @post_f.description, title: @post_f.title }
    end

    assert_redirected_to post_f_path(assigns(:post_f))
  end

  test "should show post_f" do
    get :show, id: @post_f
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_f
    assert_response :success
  end

  test "should update post_f" do
    patch :update, id: @post_f, post_f: { description: @post_f.description, title: @post_f.title }
    assert_redirected_to post_f_path(assigns(:post_f))
  end

  test "should destroy post_f" do
    assert_difference('PostF.count', -1) do
      delete :destroy, id: @post_f
    end

    assert_redirected_to post_fs_path
  end
end
