require "test_helper"

describe CommentsController do

  before do
    @comment = comments(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create comment" do
    assert_difference('Comment.count') do
      post :create, comment: {  }
    end

    assert_redirected_to comment_path(assigns(:comment))
  end

  it "must show comment" do
    get :show, id: @comment
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @comment
    assert_response :success
  end

  it "must update comment" do
    put :update, id: @comment, comment: {  }
    assert_redirected_to comment_path(assigns(:comment))
  end

  it "must destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to comments_path
  end

end
