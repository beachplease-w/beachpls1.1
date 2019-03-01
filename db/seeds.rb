puts "Cleaning Tournaments"
Tournament.destroy_all
puts "Cleaning Users"
User.destroy_all
puts "Cleaning team players"
TeamPlayer.destroy_all
puts "Cleaning Teams"
Team.destroy_all

puts 'creating user 1..'
user1 = User.new
user1.email = 'marine@sourin.com'
user1.password = 'marinesourin'
user1.first_name = 'Marine'
user1.last_name = 'Sourin'
user1.license_no = 11111
user1.birth_date = "07/05/1995"
user1.save!
puts 'user 1 created !'

puts 'creating user 2..'
user2 = User.new
user2.email = 'jules@rivoire.com'
user2.password = 'julesrivoire'
user2.first_name = 'Jules'
user2.last_name = 'Rivoire'
user2.license_no = 22222
user2.birth_date = "26/02/1996"
user2.save!
puts 'user 2 created !'

puts 'creating user 3..'
user3 = User.new
user3.email = 'yohan@bendavid.com'
user3.password = 'yohanbendavid'
user3.first_name = 'Yohan'
user3.last_name = 'Bendavid'
user3.license_no = 33333
user3.birth_date = "26/02/1992"
user3.save!
puts 'user 3 created !'

puts 'creating user 4..'
user4 = User.new
user4.email = 'guitou@imary.com'
user4.password = 'guitouimary'
user4.first_name = 'Guitou'
user4.last_name = 'Imary'
user4.license_no = 44444
user4.birth_date = "26/02/1991"
user4.save!
puts 'user 4 created !!'

require 'faker'
counter = 5
10.times do
  puts 'creating a fake users..'
  newuser = User.new
  f_name = Faker::Name.first_name
  l_name = Faker::Name.last_name
  email = f_name + "." + l_name + "@gmail.com"
  newuser.email = email
  newuser.password = "BeachPlease"
  newuser.first_name = f_name
  newuser.last_name = l_name
  newuser.license_no = "#{counter}#{counter}#{counter}#{counter}#{counter}".to_i
  newuser.birth_date = Faker::Date.birthday(18, 50)
  newuser.save!
  counter +=1
end
puts ' 10 fake users created !!'

address = { "Paris" => ["50 rue du Ranelagh, Paris, France"] }
puts "Tournois Parisien"
address.each do |city, ad|
  ad.each do |address|
    date = "Sat, 02 Mar 2019"
    Tournament.create!({
      name: Faker::Esport.event,
      date: date,
      serie: ['Série 3 - 150', 'Série 2 - 1000', 'Série 2 - 250', 'Série 2 - 500', 'Série 2 - 750', 'Série 1 - 1500', 'Série 1 - 2500'].sample,
      address: address,
      remarques: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, vero." ,
      equipe_tableau_principal: (12..16).to_a.sample,
      wildcard_principal: (0..4).to_a.sample,
      place_reservees_qualif: (0..4).to_a.sample,
      equipe_qualif: (0..4).to_a.sample,
      wildcard_qualif: (0..4).to_a.sample,
      terrains_normes: (0..4).to_a.sample,
      date_qualif: date,
      date_principal: date,
      prize_money: [100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
      split_prize_money: "1-60€ 2-40€ 3-30€",
      limit_inscription: date,
      reunion_qualif: date ,
      reunion_principal: date,
      ville: city,
      club_organisateur: Faker::Company.name,
      contact: Faker::PhoneNumber.cell_phone,
      genre: "Homme",
      sku: "qwerty",
      price_cents: [1000, 1500, 2000, 2500, 3000].sample,
    })
  end
end
puts 'Tournaments created'

address = { "Marseille" => ["1 rue des Catalans, 13007 Marseille, France"] }
puts "Tournois Marseillais"
address.each do |city, ad|
  ad.each do |address|
    date = "Sat, 09 Mar 2019"
    Tournament.create!({
      name: Faker::Esport.event,
      date: date,
      serie: ['Série 3 - 150', 'Série 2 - 1000', 'Série 2 - 250', 'Série 2 - 500', 'Série 2 - 750', 'Série 1 - 1500', 'Série 1 - 2500'].sample,
      address: address,
      remarques: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, vero." ,
      equipe_tableau_principal: (12..16).to_a.sample,
      wildcard_principal: (0..4).to_a.sample,
      place_reservees_qualif: (0..4).to_a.sample,
      equipe_qualif: (0..4).to_a.sample,
      wildcard_qualif: (0..4).to_a.sample,
      terrains_normes: (0..4).to_a.sample,
      date_qualif: date,
      date_principal: date,
      prize_money: [100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
      split_prize_money: "1-60€ 2-40€ 3-30€",
      limit_inscription: date,
      reunion_qualif: date ,
      reunion_principal: date,
      ville: city,
      club_organisateur: Faker::Company.name,
      contact: Faker::PhoneNumber.cell_phone,
      genre: "Homme",
      sku: "qwerty",
      price_cents: [1000, 1500, 2000, 2500, 3000].sample,
    })
  end
end
address.each do |city, ad|
  ad.each do |address|
    date = "Sat, 09 Mar 2019"
    Tournament.create!({
      name: Faker::Esport.event,
      date: date,
      serie: ['Série 3 - 150', 'Série 2 - 1000', 'Série 2 - 250', 'Série 2 - 500', 'Série 2 - 750', 'Série 1 - 1500', 'Série 1 - 2500'].sample,
      address: address,
      remarques: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, vero." ,
      equipe_tableau_principal: (12..16).to_a.sample,
      wildcard_principal: (0..4).to_a.sample,
      place_reservees_qualif: (0..4).to_a.sample,
      equipe_qualif: (0..4).to_a.sample,
      wildcard_qualif: (0..4).to_a.sample,
      terrains_normes: (0..4).to_a.sample,
      date_qualif: date,
      date_principal: date,
      prize_money: [100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
      split_prize_money: "1-60€ 2-40€ 3-30€",
      limit_inscription: date,
      reunion_qualif: date ,
      reunion_principal: date,
      ville: city,
      club_organisateur: Faker::Company.name,
      contact: Faker::PhoneNumber.cell_phone,
      genre: "Femme",
      sku: "qwerty",
      price_cents: [1000, 1500, 2000, 2500, 3000].sample,
    })
  end
end
puts 'Tournaments created'

address = { "Paris" => ["17 rue Bausset, Paris, France", "6 rue de Remusat, Paris, France", "16 Villa Gaudelet, Paris, France"], "Marseille" => ["5 rue paradis, Marseille, France", "10 rue roger brun, Marseille, France", "18 rue ferrari, Marseille, France"], "Lyon" => ["5 Rue de l'université, Lyon, France", "5 Rue Cuvier, Lyon, France", "9 Rue Billon, Lyon, France"], "Toulouse" => ["5 Rue des Fontaines, Toulouse, France", "5 Rue Corneille, Toulouse, France", "5 Rue Bernadette, Toulouse, France"], "Bordeaux" => ["5 Rue dr Bert, Bordeaux, France", "5 Rue Coli, Bordeaux, France", "5 Rue Tranchere, Bordeaux, France"]}
puts "Creating some tournaments"
address.each do |city, ad|
  ad.each do |address|
    date = Faker::Date.between(Date.today, 1.year.from_now)
    Tournament.create!({
      name: Faker::Esport.event,
      date: date,
      serie: ['Série 3 - 150', 'Série 2 - 1000', 'Série 2 - 250', 'Série 2 - 500', 'Série 2 - 750', 'Série 1 - 1500', 'Série 1 - 2500'].sample,
      address: address,
      remarques: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, vero." ,
      equipe_tableau_principal: (12..16).to_a.sample,
      wildcard_principal: (0..4).to_a.sample,
      place_reservees_qualif: (0..4).to_a.sample,
      equipe_qualif: (0..4).to_a.sample,
      wildcard_qualif: (0..4).to_a.sample,
      terrains_normes: (0..4).to_a.sample,
      date_qualif: date,
      date_principal: date,
      prize_money: [100, 150, 200, 250, 300, 350, 400, 450, 500].sample,
      split_prize_money: "1-60€ 2-40€ 3-30€",
      limit_inscription: date,
      reunion_qualif: date ,
      reunion_principal: date,
      ville: city,
      club_organisateur: Faker::Company.name,
      contact: Faker::PhoneNumber.cell_phone,
      genre: %w[Femme Homme].sample,
      sku: "qwerty",
      price_cents: [1000, 1500, 2000, 2500, 3000].sample,
    })
  end
end
puts 'Tournaments created'

puts 'Creating some "teams" for Marine'
counter = 6
5.times do
  team = Team.create
  team_player = TeamPlayer.new
  team_player.team = team
  team_player.user = User.find_by(license_no: 11111)
  team_player.save
  team_player1 = TeamPlayer.new
  team_player1.team = team
  licence = "#{counter}#{counter}#{counter}#{counter}#{counter}".to_i
  team_player1.user = User.find_by(license_no: licence)
  team_player1.save
  counter += 1
end

puts '5 "teams" created for Marine'

puts 'Creating some "teams" for Jules'
counter = 6
5.times do
  team = Team.create
  team_player = TeamPlayer.new
  team_player.team = team
  team_player.user = User.find_by(license_no: 22222)
  team_player.save
  team_player1 = TeamPlayer.new
  team_player1.team = team
  licence = "#{counter}#{counter}#{counter}#{counter}#{counter}".to_i
  team_player1.user = User.find_by(license_no: licence)
  team_player1.save
  counter += 1
end

puts '5 "teams" created for Jules'

puts 'Creating some "teams" for Yohan'
counter = 6
5.times do
  team = Team.create
  team_player = TeamPlayer.new
  team_player.team = team
  team_player.user = User.find_by(license_no: 33333)
  team_player.save
  team_player1 = TeamPlayer.new
  team_player1.team = team
  licence = "#{counter}#{counter}#{counter}#{counter}#{counter}".to_i
  team_player1.user = User.find_by(license_no: licence)
  team_player1.save
  counter += 1
end

puts '5 "teams" created for Yohan'

puts 'Creating some "teams" for Guitou'
counter = 6
5.times do
  team = Team.create
  team_player = TeamPlayer.new
  team_player.team = team
  team_player.user = User.find_by(license_no: 44444)
  team_player.save
  team_player1 = TeamPlayer.new
  team_player1.team = team
  licence = "#{counter}#{counter}#{counter}#{counter}#{counter}".to_i
  team_player1.user = User.find_by(license_no: licence)
  team_player1.save
  counter += 1
end

puts '5 "teams" created for Guitou'

# puts "Creating inscriptions"
#   tournois = Tournament.all
#   tournois.each do |tournoi|
#     3.times do
#       team = (1..20).to_a.sample
#       inscription = Inscription.new
#       inscription.team = Team.find(team)
#       inscription.tournament = tournoi
#       inscription.save
#     end
#   end

# puts "Created 3 inscriptions for each tournament"

puts 'Everything is ready guys!!'
