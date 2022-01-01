class JokesController < ApplicationController

  def index
    jokes = Joke.all
    render json:  JSON.pretty_generate(jokes.as_json only: [:id, :joke_id, :joke])
  end

  def show 
    joke = Joke.find(params[:id])
    render json: JSON.pretty_generate(joke.as_json)
  end
end
