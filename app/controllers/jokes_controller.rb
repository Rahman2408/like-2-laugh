class JokesController < ApplicationController

  def index
    # byebug
    jokes = Joke.all
    render json:  JSON.pretty_generate(jokes.as_json)
  end

  def show 
    joke = Joke.find(params[:id])
    render json: JSON.pretty_generate(joke.as_json)
  end

  # def myjokes
  #   my_jokes = UserJoke.all
  #   render json: JSON.pretty_generate(my_jokes.as_json)
  # end

  # def random_joke
    
  #   joke= Joke.find(rand(1..Joke.all.length))
  #   render json: JSON.pretty_generate(joke.as_json)
  # end
end
