require 'test_helper'

class PostPsControllerTest < ActionController::TestCase
  setup do
    @post_p = post_ps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_ps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_p" do
    assert_difference('PostP.count') do
      post :create, post_p: { description: @post_p.description, title: @post_p.title }
    end

    assert_redirected_to post_p_path(assigns(:post_p))
  end

  test "should show post_p" do
    get :show, id: @post_p
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_p
    assert_response :success
  end

  test "should update post_p" do
    patch :update, id: @post_p, post_p: { description: @post_p.description, title: @post_p.title }
    assert_redirected_to post_p_path(assigns(:post_p))
  end

  test "should destroy post_p" do
    assert_difference('PostP.count', -1) do
      delete :destroy, id: @post_p
    end

    assert_redirected_to post_ps_path
  end
end
