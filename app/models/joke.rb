class Joke < ApplicationRecord

  @@api_jokes = []


  def self.web_jokes
    @@api_jokes  ##to segregate saved jokes that aren't original
  end


end
