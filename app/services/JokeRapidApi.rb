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
    @response = http.request(request)
    @response.read_body
  end

  def all_jokes
    @@ALL_JOKES
  end
end