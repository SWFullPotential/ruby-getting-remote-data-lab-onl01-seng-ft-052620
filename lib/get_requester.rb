require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  attr_accessor :URL 
  
  def initialize(url)
    @URL = URL
  end
  
  def get_response_body
     uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    JSON.parse(get_response_body)
  end
  
end