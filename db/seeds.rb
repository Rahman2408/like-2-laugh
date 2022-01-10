# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(username: 'rahman', password: 'rahman', email:'rahman@email.com')
JokeRapidApi.new.save_joke
UserJoke.create(joke_setup: "this is a joke made by the user in hopes they're funny", joke_punchline: 'this is the hilarious punchline', user: user)
UserJoke.create(joke_setup: "ANOTHER joke made by the user in hopes they're funny", joke_punchline: 'this is ANOTHER hilarious punchline', user: user)