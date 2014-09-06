require 'test_helper'

class LinePostsControllerTest < ActionController::TestCase
  setup do
    @line_post = line_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_post" do
    assert_difference('LinePost.count') do
      post :create, line_post: { content: @line_post.content, title: @line_post.title }
    end

    assert_redirected_to line_post_path(assigns(:line_post))
  end

  test "should show line_post" do
    get :show, id: @line_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_post
    assert_response :success
  end

  test "should update line_post" do
    put :update, id: @line_post, line_post: { content: @line_post.content, title: @line_post.title }
    assert_redirected_to line_post_path(assigns(:line_post))
  end

  test "should destroy line_post" do
    assert_difference('LinePost.count', -1) do
      delete :destroy, id: @line_post
    end

    assert_redirected_to line_posts_path
  end
end
