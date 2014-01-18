require "test_helper"

describe ArticlesController do

  before do
    @article = articles(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create article" do
    assert_difference('Article.count') do
      post :create, article: {  }
    end

    assert_redirected_to article_path(assigns(:article))
  end

  it "must show article" do
    get :show, id: @article
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @article
    assert_response :success
  end

  it "must update article" do
    put :update, id: @article, article: {  }
    assert_redirected_to article_path(assigns(:article))
  end

  it "must destroy article" do
    assert_difference('Article.count', -1) do
      delete :destroy, id: @article
    end

    assert_redirected_to articles_path
  end

end
