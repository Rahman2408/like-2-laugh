class UserJokesController < ApplicationController
  def index
    jokes = UserJoke.all
    render json:  JSON.pretty_generate(jokes.as_json)
  end

  def create
    # byebug
    joke = logged_in_user.user_jokes.create(joke_params)
    render json: JSON.pretty_generate(joke.as_json)
  end

  def show 
    joke = UserJoke.find(params[:id])
    render json: JSON.pretty_generate(joke.as_json)
  end


  def destroy
    UserJoke.find(params[:id]).destroy 
    jokes = UserJoke.all
    render json:  JSON.pretty_generate(jokes.as_json)
  end
  
  private 

  def joke_params
    params.permit(:joke_setup, :joke_punchline, :user_jokes)
  end
end
