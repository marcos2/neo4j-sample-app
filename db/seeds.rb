 require 'faker' 
 require 'neo4j'


 Article.delete_all
 Comment.delete_all


 article_array =  []

 # create sample articles
 10.times do 
   new_article = Article.create(:content => Faker::Lorem.paragraphs(3), :published_at => Time.now)
   article_array << new_article
 end

 # create comments to articles 
 
 article_array.each do |article| 

  number_of_comments = rand(1..30)

  1.upto number_of_comments do 
    article.comments << Comment.new(:content => Faker::Lorem.sentence(4,false,10), :published_at => Time.now )
  end
 end




