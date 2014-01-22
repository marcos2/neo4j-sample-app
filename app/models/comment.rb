class Comment < Neo4j::Rails::Model
  property :content, :type => String

  validates_presence_of :content

end
