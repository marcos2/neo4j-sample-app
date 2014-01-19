class Comment < Neo4j::Rails::Model
  property :content, :type => String
  property :published_at, :type => Date

  has_one(:article).from(Article,:comments)
end
