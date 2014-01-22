class Article < Neo4j::Rails::Model
  property :content, :type => String
  has_n(:comments).to(Comment)

  validates_presence_of :content

end

