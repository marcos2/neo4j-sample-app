require "test_helper"

describe Article do
  before do
    @article = Article.new
  end

  it "must be valid" do
    @article.valid?.must_equal true
  end
end
