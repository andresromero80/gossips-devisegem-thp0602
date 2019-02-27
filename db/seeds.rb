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

# Mission.create!("title"=>"Bien manger et bouger dès l'école maternelle - Colomiers - Villes et Collectivités Actives PNNS", "theme"=>"Nutrition (alimentation et activité physique)", "program"=>"Programme 1 : Promotion de l'alimentation équilibrée et de l'activité physique et prévention des pathologies chroniques ", "context"=>"Après une phase de diagnostic autour des besoins de la commune de Colomiers en matière de santé et de nutrition, la vile de Colomiers s'est engager sur un programme PNNS", "objectif"=>"- Sensibiliser les enseignants et enfants sur l'importance d'une alimentation équilibrée dès l'école maternelle", "description"=>"* Intervention d’une diététicienne au sein de trois écoles.\r\n- Objectif de 10 classes concernées, 11 séances prévues par classe sur l’année scolaire.\r\n- Implication concomitante des personnels municipaux, ATSEM et restauration\r\n- Action menée en partenariat avec la CPAM.", "partner"=>"", "start"=>"2016", "end"=>"2016", "frequence"=>"Répétitive", "public"=>"Enfants (2-5 ans), Professionnels de l'éducation", "numpeople"=>"", "type"=>"Communication, information, sensibilisation, Formation", "finance"=>"ARS : 1 500 € €", "evaluation"=>"* Indicateurs quantitatifs - Nombres de bénéficiaire : 290 enfants - Nombre de séances : 11 séances par école - Nombre d'établissement touchés : 4 écoles maternelles", "sector"=>"Etablissement scolaire maternelle et primaire, Autre", "geolevel"=>"Communal", "commune"=>"Colomiers", "deplevel"=>"", "plan"=>"JEUNES - Plan Santé des Jeunes, NUTRITION - Programme national nutrition santé (2011-2015)"}


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