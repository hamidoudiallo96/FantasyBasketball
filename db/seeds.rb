# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'

url = 'https://www.balldontlie.io/api/v1/stats'
response = RestClient.get(url)
data = JSON.parse(response)
p data

# User => first_name, last_name, user_name, email, password, team_id
# Teams => name, location, user_id, tournament_id, player_id
# Tournament =>  name
# Players => api