require 'faraday'
require 'json'

class JokeApi

  attr_reader :response, :joke, :joke_id 

  @@all = []
  
  
  def initialize()
    url = 'https://icanhazdadjoke.com/'
   

    response = Faraday.get(url, {a: 1}, {'Accept' => 'application/json'})
    @response = JSON.parse(response.body, symbolize_names: true)
    @@all << @response
    @joke = @response[:joke]
    @joke_id = @response[:id]
  end

  def self.all
     @@all 
  end

  def save_joke
    Joke.find_or_create_by(joke: self.joke, joke_id: self.joke_id)
  end


  

end


# require 'uri'
# require 'net/http'
# require 'openssl'

# url = URI("https://jokes10.p.rapidapi.com/api/jokes")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-host"] = 'jokes10.p.rapidapi.com'
# request["x-rapidapi-key"] = 'fdff312267msh8e7d79a718d7a7fp1027f1jsn5b63bcb0b23c'

# response = http.request(request)
# puts response.read_body

