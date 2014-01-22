require "test_helper"

describe Article do
  before do
    @valid_article = Article.new(:content => 'lorem ipsum')
    @invalid_article = Article.new
  end

  it "valid article is valid" do
    @valid_article.valid?.must_equal true
  end

  it "invalid article is invalid" do
    @invalid_article.valid?.must_equal false
  end
end
