
## Neo4j and rails 3


### This is a training repo with the following stack:

    gem "neo4j", ">= 2.3.0"
    gem 'rails', '3.2.16'




### Installation

    rvm use jruby

    git clone https://github.com/mrohon/neo4j-sample-app.git

    cd neo4j-sample-app

    bundle

    neo4j start

    rake db:seed

    rake db:seed ENV=test

    rails s


### Online


   Application is deployed on Heroku [here](http://rohonneo4j.herokuapp.com/) without `heroku rake db:seed`


### Basic UML Diagram

![UML Diagram](./uml.png)



### TODO

    add tests
    fix bugs
    improve app (e.g. visualization)
    




