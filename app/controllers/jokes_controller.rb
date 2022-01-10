class JokesController < ApplicationController

  def index
    jokes = Joke.all
    render json:  JSON.pretty_generate(jokes.as_json)
  end

  def show 
    joke = Joke.find(params[:id])
    render json: JSON.pretty_generate(joke.as_json)
  end
end
