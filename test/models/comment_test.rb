require "test_helper"

describe Comment do

  before do
    @invalid_comment  = Comment.new
    @valid_comment    = Comment.new(:content => 'lorem ipsum')
  end

  it "invalid comment is invalid" do
    @invalid_comment.valid?.must_equal false
  end

  it "valid comment is valid" do
    @valid_comment.valid?.must_equal true
  end

end
