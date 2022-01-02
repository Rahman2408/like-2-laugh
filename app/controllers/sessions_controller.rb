class SessionsController < ApplicationController

  def login
    user = User.find_by_username(params[:username])

    if user && user.authenticate(params[:password])
      render json: use
    else 
      render json: {errors: "Invalid Username and/or Password"}, status: :forbidden
    end
  end


  
end
