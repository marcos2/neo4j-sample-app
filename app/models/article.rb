class Article < Neo4j::Rails::Model
  property :content, :type => String
  has_n(:comments).to(Comment)
end
