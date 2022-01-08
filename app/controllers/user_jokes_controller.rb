class UserJokesController < ApplicationController
  def index
    jokes = UserJoke.all
    render json:  JSON.pretty_generate(jokes.as_json)
  end

  def show 
    joke = UserJoke.find(params[:id])
    render json: JSON.pretty_generate(joke.as_json)
  end

end
