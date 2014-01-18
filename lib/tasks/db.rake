  namespace :db do 

  desc "seeds neoj4 graph database" 
  task :seed => :environment do 

     puts "seeding database" 
     seed_file = File.join(Rails.root, 'db', 'seeds.rb')
     load(seed_file) if File.exists?(seed_file)



  end
end
