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

# data_set = JSON.parse(response)

# # player first_name, last_name, position
# player_data = data_set["data"].map do |data|
#   data["player"].select do |k,v|
#     if k == 'first_name'
#       first_name = v
#     elsif k == 'last_name'
#       last_name = v
#     elsif k == 'position'
#       position = v
#     end
#   end
# end

# player_points = []
# data_set["data"].each do |data|
#   data.select do |k,v|
#     if k == 'pts'
#        points = v
#        player_points << points
#     end
#   end
# end

# player_data.each do |item|
#   player_points.each do |point|
#     item[:pts] = point
#   end 
# end
# puts ""
# p player_data
# puts ""

#  player1 = Player.create(first_name: player_data[0]["first_name"], last_name: player_data[0]["first_name"], position: player_data[0]["position"], pts:player_data[0]["pts"] )


# Players => api #DONE
# Tournament =>  name => CREATE SEED DATA #DONE
# User => first_name, last_name, user_name, email, password, team_id (LOGIN,SIGNUP, USER/NEW)
# Teams => name, location, user_id, tournament_id, player_id => FORM(TEAMS/NEW)

# User instances
# hami = User.create(first_name: "Hami", last_name: "Diallo", user_name: "HamiD", email: "hamid@yahoo.com", password: "password123")
# aniece = User.create(first_name: "Aniece", last_name: "Thompson", user_name: "AniT", email: "anit@yahoo.com", password: "p123456")
# ben = User.create(first_name: "Ben", last_name: "Frank", user_name: "BenF", email: "ben@gmail.com", password: "Benny123")
# sara = User.create(first_name: "Sara", last_name: "Gonzalez", user_name: "SaraG", email: "sara_g@outlook.com", password: "Winter2019")

Tournament.destroy_all
Team.destroy_all
User.destroy_all


# # Tournament instance
nba_finals = Tournament.create(name:'NBA Finals')
gold_glove = Tournament.create(name:'Gold Glove Tournament')
seaside = Tournament.create(name:'Seaside Invitational')
point_gods = Tournament.create(name:'Point Gods')
smoking_3 = Tournament.create(name:'Smoking Threes')
maui = Tournament.create(name:'Maui Invitational')

# Player instance
nash = Player.create(first_name:'Steve', last_name: 'Nash', position: 'PG', pts: 25)
kidd = Player.create(first_name:'Jason', last_name: 'Kid', position: 'PG', pts: 15)
magic = Player.create(first_name:'Magic', last_name: 'Johnson', position: 'PG', pts: 29)
stockton = Player.create(first_name:'John', last_name: 'Stockton', position: 'PG', pts: 12)
iverson = Player.create(first_name:'Allan', last_name: 'Iverson', position: 'PG', pts: 39)


harden = Player.create(first_name:'James', last_name: 'Harden', position: 'SG', pts: 32)
jordan = Player.create(first_name: 'Michael', last_name: 'Jordan', position: 'SG', pts: 60)
kobe = Player.create(first_name:'Kobe', last_name: 'Bryant', position: 'SG', pts: 40)
drexler = Player.create(first_name:'Clyde', last_name: 'Drexler', position: 'SG', pts: 30)
mcgrady = Player.create(first_name:'Tracey', last_name: 'McGrady', position: 'SG', pts: 22)

lebron = Player.create(first_name:'Lebron', last_name: 'Jamees', position: 'SF', pts: 35)
kawhi = Player.create(first_name:'Kawhi', last_name: 'Leonard', position: 'SF', pts: 36)
george = Player.create(first_name:'Paul', last_name: 'George', position: 'SF', pts: 31)
carmelo = Player.create(first_name:'Carmelo', last_name: 'Anthony', position: 'SF', pts: 26)
Durant = Player.create(first_name:'Kevin', last_name: 'Durant', position: 'SF', pts: 40)

buddy = Player.create(first_name: "Buddy", last_name: "Hield", position: "PF", pts: 4 )
fox = Player.create(first_name: "De'Aaron", last_name: "Fox", position: "PF", pts: 14 )
bogdan = Player.create(first_name: "Bogdan", last_name: "Bogdanovic", position: "PF", pts: 18 )
yogi = Player.create(first_name: "Yogi", last_name: "Ferrell", position: "PF", pts: 8 )
buddy = Player.create(first_name: "Marvin", last_name: "Bagley III", position: "PF", pts: 12 )

jackson = Player.create(first_name: "Justin", last_name: "Jackson", position: "C", pts: 16 )
harry = Player.create(first_name: "Harry", last_name: "Giles III", position: "C", pts: 8 )
frank = Player.create(first_name: "Frank", last_name: "Mason", position: "C", pts: 24 )
ben = Player.create(first_name: "Ben", last_name: "McLemore", position: "C", pts: 6 )
kosta = Player.create(first_name: "Kosta", last_name: "Koufos", position: "C", pts: 12 )



# all_player = player_data.each  do |player_hash|
#      Player.create(first_name: player_hash["first_name"], last_name: player_hash["last_name"], position: player_hash["position"], pts: player_hash["pts"])
# end
 
# Team Instance
