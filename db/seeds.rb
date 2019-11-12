# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'rest-client'
# require 'json'

# url = 'https://www.balldontlie.io/api/v1/stats'
# response = RestClient.get(url)
# data = JSON.parse(response)
# p data

# User => first_name, last_name, user_name, email, password, team_id
# Teams => name, location, user_id, tournament_id, player_id
# Tournament =>  name
# Players => api

User.destroy_all
Tournament.destroy_all
Player.destroy_all
Team.destroy_all

# # User instance
hami = User.create(
  first_name: 'Hamidou', 
  last_name: 'Diallo', 
  user_name:'saiko124', 
  email: 'dio.hamidou@gmail.com', 
  password: 'password123'
)

# # Tournament instance
nba_finals = Tournament.create(name:'NBA Finals')

# Player instance
jordan = Player.create(
  first_name: 'Michael', 
  last_name: 'Jordan', 
  position: 'SG', pts: 60
)

# # Team instance
sharks = Team.create(
  name: 'Dumbo Sharks', 
  location: 'Dumbo', 
  user:hami, 
  tournament:nba_finals, 
  player:jordan
)