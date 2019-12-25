# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'flushing tables'
User.destroy_all()
Team.destroy_all()
TeamFollower.destroy_all()

puts "Creating Users"

u1 = User.create(name: "Nick", username: "NickM", password: "123")

puts "Users created"
puts "Creating some teams"

t1 = Team.create(name: "Evil Geniuses", tag: 'EG', logo_url: "https://steamcdn-a.akamaihd.net/apps/dota2/images/team_logos/39.png", wins: 1035, losses: 620)
t2 = Team.create(name: "OG", tag: 'OG', logo_url: "https://steamcdn-a.akamaihd.net/apps/dota2/images/team_logos/2586976.png", wins: 538, losses: 301)

puts "Teams Created"

puts 'Creating some relations'

tf1 = TeamFollower.create(team_id: t1.id, user_id: u1.id)
tf2 = TeamFollower.create(team_id: t2.id, user_id: u1.id)