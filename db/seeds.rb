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

data_set = JSON.parse(response)

# player first_name, last_name, position
player_data = data_set["data"].map do |data|
  data["player"].select do |k,v|
    if k == 'first_name'
      first_name = v
    elsif k == 'last_name'
      last_name = v
    elsif k == 'position'
      position = v
    end
  end
end

player_points = []
data_set["data"].each do |data|
  data.select do |k,v|
    if k == 'pts'
       points = v
       player_points << points
    end
  end
end

player_data.each do |item|
  player_points.each do |point|
    item[:pts] = point
  end 
end
puts ""
p player_data[0]
puts ""

 player1 = Player.create(first_name: player_data[0]["first_name"], last_name: player_data[0]["first_name"], position: player_data[0]["position"], pts:player_data[0]["pts"] )

 # User.destroy_all
# Tournament.destroy_all
# Team.destroy_all

# Players => api #DONE
# Tournament =>  name => CREATE SEED DATA #DONE
# User => first_name, last_name, user_name, email, password, team_id (LOGIN,SIGNUP, USER/NEW)
# Teams => name, location, user_id, tournament_id, player_id => FORM(TEAMS/NEW)

# User instances
hami = User.create(first_name: "Hami", last_name: "Diallo", user_name: "HamiD", email: "hamid@yahoo.com", password: "password123")
aniece = User.create(first_name: "Aniece", last_name: "Thompson", user_name: "AniT", email: "anit@yahoo.com", password: "p123456")
ben = User.create(first_name: "Ben", last_name: "Frank", user_name: "BenF", email: "ben@gmail.com", password: "Benny123")
sara = User.create(first_name: "Sara", last_name: "Gonzalez", user_name: "SaraG", email: "sara_g@outlook.com", password: "Winter2019")


# # Tournament instance
nba_finals = Tournament.create(name:'NBA Finals')
gold_glove = Tournament.create(name:'Gold Glove Tournament')
seaside = Tournament.create(name:'Seaside Invitational')
point_gods = Tournament.create(name:'Point Gods')
smoking_3 = Tournament.create(name:'Smoking Threes')
maui = Tournament.create(name:'Maui Invitational')

# Player instance
all_player = player_data.each  do |player_hash|
     Player.create(first_name: player_hash["first_name"], last_name: player_hash["last_name"], position: player_hash["position"], pts: player_hash["pts"])
end

# Team Instance
sharks = Team.create(
  name: 'Sharks',
  location: 'Dumbo',
  player: player_stats,
  user: aniece,
  tournament: maui

)
