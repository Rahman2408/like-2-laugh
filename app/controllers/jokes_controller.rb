class JokesController < ApplicationController

  def index
    jokes = Joke.all
  render json:  JSON.pretty_generate(jokes.as_json only: [:id, :joke_id, :joke])
  end
end
