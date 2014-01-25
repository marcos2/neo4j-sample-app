
require "test_helper"
describe CommentsController do

  before do
    @comment = Comment.create(:content => 'lorem ipsum lorem ipsum')
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(@comment)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { :content => 'lorem ipsum' }
    end

    assert_redirected_to comment_path(assigns(@comment))
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
    put :update, id: @comment, comment: { :content => 'updated comment' }
    assert_redirected_to comment_path(assigns(@comment))
  end

  it "must destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to comments_path
  end

end
