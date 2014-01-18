require "test_helper"

describe UsersController do

  before do
    @user = users(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create user" do
    assert_difference('User.count') do
      post :create, user: {  }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  it "must show user" do
    get :show, id: @user
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @user
    assert_response :success
  end

  it "must update user" do
    put :update, id: @user, user: {  }
    assert_redirected_to user_path(assigns(:user))
  end

  it "must destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end

end
