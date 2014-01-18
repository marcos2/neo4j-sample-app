# usage: 
# rails _3.2.16_ new <MY APP NAME> -m project_setup.rb -O

NEO4J_VERSION = "2.3.0"

gem_group :development, :test do
  gem 'guard' 
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
  gem 'capybara_minitest_spec'
  gem 'minitest-colorize'
  gem 'minitest-focus'
end

# graph database 
gem "neo4j", ">= #{NEO4J_VERSION}"

# jruby deployment on heroku 
gem 'puma'
# ruby '1.9.3', :engine => 'jruby', :engine_version => '1.7.9' 

# we are using JRuby - use Threads !
gsub_file "config/environments/production.rb", "# config.threadsafe!", "config.threadsafe!"

generator = %q[

    # Enable Neo4j generators, e.g:  rails generate model Admin --parent User
    config.generators do |g|
      g.orm             :neo4j
      g.test_framework  :mini_test, :fixture => true 
    end

    # Configure where the neo4j database should exist
    config.neo4j.storage_path = "#{config.root}/db/neo4j-#{Rails.env}"
]

inject_into_file 'config/application.rb', generator, :after => '[:password]'

