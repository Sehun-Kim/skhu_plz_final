require 'test_helper'

class PostusControllerTest < ActionController::TestCase
  setup do
    @postu = postus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postu" do
    assert_difference('Postu.count') do
      post :create, postu: { content: @postu.content, title: @postu.title }
    end

    assert_redirected_to postu_path(assigns(:postu))
  end

  test "should show postu" do
    get :show, id: @postu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postu
    assert_response :success
  end

  test "should update postu" do
    patch :update, id: @postu, postu: { content: @postu.content, title: @postu.title }
    assert_redirected_to postu_path(assigns(:postu))
  end

  test "should destroy postu" do
    assert_difference('Postu.count', -1) do
      delete :destroy, id: @postu
    end

    assert_redirected_to postus_path
  end
end
