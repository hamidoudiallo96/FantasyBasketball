require '../../db/seeds.rb'
require 'rest-client'
require 'json'

url = 'https://www.balldontlie.io/api/v1/stats'
response = RestClient.get(url)
data_set = JSON.parse(response)


class TestSeed
  
end



