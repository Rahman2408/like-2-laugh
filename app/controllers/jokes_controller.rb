class JokesController < ApplicationController

  def index
    jokes = Joke.all
    render json:  JSON.pretty_generate(jokes.as_json)
  end

  def show 
    joke = Joke.find(params[:id])
    render json: JSON.pretty_generate(joke.as_json)
  end

  def myjokes
    my_jokes = Joke.where(joke_id: nil)
    render json: JSON.pretty_generate(my_jokes.as_json)
  end

  def joke_lib
    jokes = Joke.all
    render json: JSON.pretty_generate(jokes.as_json)
  end
end
