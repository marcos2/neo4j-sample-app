class Article < Neo4j::Rails::Model
  property :content, :type => String
  property :published_at, :type => Date

  has_n(:comments).to(Comment)



end
