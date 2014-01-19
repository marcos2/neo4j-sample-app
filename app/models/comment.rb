class Comment < Neo4j::Rails::Model
  property :content, :type => String
end
