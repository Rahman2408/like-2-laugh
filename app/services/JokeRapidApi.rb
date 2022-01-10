require 'uri'
require 'net/http'
require 'openssl'

class JokeRapidApi
  attr_reader :response, :jokeP, :jokeT, :joke_id, :jokes
  
  def initialize()

    url = URI("https://jokes10.p.rapidapi.com/api/jokes")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = ENV['JOKE_API_HOST']
    request["x-rapidapi-key"] = ENV['JOKE_API_KEY']
    response = http.request(request)
    @response = JSON.parse(response.body, symbolize_names: true)
    @jokes = @response[:data]
  end

  def save_joke
    self.jokes.map{|j| Joke.find_or_create_by(joke_setup: j[:joke_text], joke_punchline: j[:joke_punchline], joke_id: j[:joke_id])}  #only for adding multiple jokes to DB
  end
end