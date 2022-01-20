# README
# Like-2-Laugh-Backend 
### A deployed version of this app is available here: [Like2Laugh](https://like2laugh.herokuapp.com) 

#

 If you're looking the ultimate mood booster, you're exactly where you should be. Take a look through a library of jokes others have come up with, save the ones you find worth remembering for later, and even throw one of your own into the mix if you're up for it! We all need a pick-me-up sometimes, whether to take our eyes off something, clear our minds for a bit, or maybe just because we feel like it. After all, what's the harm in trying or worst it could possibly do, make you laugh? Start by clicking above and you'll be crackin' up in no time!

#
## Backend initialized with:

    rails new like-2-laugh-backend --database=postgresql --api 

## Frontend initialized with:

    npx create-react-app like-2-laugh-frontend

## Ruby Version  
   * 2.6.8
#

## Local Deployment Instructions
   All "run" instructions refer to in your terminal while actively in the root directory of this app, ```like-to-laugh-backend```.
 # 

   1. First, use bundler to get all gem dependencies by running: 

          bundle install
  
   2. Make sure Postgres is installed, whether installed downloaded from their site or with homebrew. If using homebrew start postgres by running:   
   
          brew services start postgres
   3. Next, run the migrations to set up the database schema:   
    
          rails db:migrate
   
   4. Then load seed data with:
      
          rails db:seed
   
   5. Finally start your backend server:
   
          rails s
   
   6. Continue to Frontend README to finish local deployment.


#
API Service / Preloaded Jokes: https://rapidapi.com/danruiyot/api/jokes10/ 