# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'mime-types'
#Create users
10.times do |index|
  user = User.new(name: Faker::Name.first_name, email: Faker::Internet.email, 
  	description: Faker::Job.title, password: "123456")
  user.save!
  # img = open("https://loremflickr.com/320/240/kitten")
end




# #Create gossips
# 20.times do |index|
#   gossip = Gossip.create!(title: Faker::Book.title, content: Faker::Movie.quote, date:Faker::Time.forward(23, :morning), user_id: User.first.id + rand(10))
# end

# #Create tags
# 10.times do |index|
# 	tag = Tag.create!(title: Faker::Hipster.word)
# end 

# # Association Tags Gossips
# 10.times do |index|
# 	number = 1 + rand(10)
# 		number.times do
# 			Gossip.find(index+1).tags << Tag.find(Tag.first.id + rand(10))
# 		end 
# end 