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
    results = JSON.parse(self.get_response_body)
    results.collect do |result|
      result["agency"]
      get_requester = GetRequester.new(URL)
      results = get_requester.parse_json
    end
  end
  
end
# datum = GetRequester.new
# puts datum.parse_json.uniq