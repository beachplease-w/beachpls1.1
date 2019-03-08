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

address = { "Paris" => ["1 place de la porte de pantin, Paris, France"] }
puts "Tournois Parisien"
address.each do |city, ad|
  ad.each do |address|
    date = "Sat, 17 Mar 2019"
    Tournament.create!({
      name: 'SSA Open',
      date: date,
      serie: 'Série 2 - 250',
      address: address,
      remarques: "Pas de débardeur, Pas d'arbitre officiel",
      equipe_tableau_principal: [12, 16].sample,
      wildcard_principal: [0, 2, 4].sample,
      place_reservees_qualif: [2, 4].sample,
      equipe_qualif: [12, 16].sample,
      wildcard_qualif: [0, 2].sample,
      terrains_normes: (0..4).to_a.sample,
      date_qualif: date,
      date_principal: date,
      prize_money: 500,
      split_prize_money: "1-200€ 2-100€ 3-60€ 4-40€ 5-€25",
      limit_inscription: date,
      reunion_qualif: date,
      reunion_principal: date,
      ville: city,
      club_organisateur: Faker::Company.name,
      contact: '0607080910',
      genre: "Homme",
      sku: (0...5).map { ('a'..'z').to_a[rand(26)] }.join,
      price_cents: 3000,
      photos: 'https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/31093466_1742088709191707_126941160047378432_n.jpg?_nc_cat=106&_nc_ht=scontent-bru2-1.xx&oh=aff0b74ad78bb0c5a64704de7ffb3571&oe=5D0F2DA2',
    })
  end
end
puts 'Tournaments created'

address = { "Paris" => ["1 place de la porte de pantin, Paris, France"] }
puts "Tournois Parisien"
address.each do |city, ad|
  ad.each do |address|
    date = "Sat, 06 Feb 2019"
    Tournament.create!({
      name: 'Big tour beach',
      date: date,
      serie: 'Série 2 - 250',
      address: address,
      remarques: "Pas de débardeur, Pas d'arbitre officiel",
      equipe_tableau_principal: [12, 16].sample,
      wildcard_principal: [0, 2, 4].sample,
      place_reservees_qualif: [2, 4].sample,
      equipe_qualif: [12, 16].sample,
      wildcard_qualif: [0, 2].sample,
      terrains_normes: (0..4).to_a.sample,
      date_qualif: date,
      date_principal: date,
      prize_money: 500,
      split_prize_money: "1-200€ 2-100€ 3-60€ 4-40€ 5-€25",
      limit_inscription: date,
      reunion_qualif: date,
      reunion_principal: date,
      ville: city,
      club_organisateur: Faker::Company.name,
      contact: '0607080910',
      genre: "Homme",
      sku: (0...5).map { ('a'..'z').to_a[rand(26)] }.join,
      price_cents: 3000,
      photos: 'https://scontent-bru2-1.xx.fbcdn.net/v/t1.0-9/31093466_1742088709191707_126941160047378432_n.jpg?_nc_cat=106&_nc_ht=scontent-bru2-1.xx&oh=aff0b74ad78bb0c5a64704de7ffb3571&oe=5D0F2DA2',
    })
  end
end
puts 'Tournaments created'

address = { "Marseille" => ["1 rue des Catalans, 13007 Marseille, France"] }
puts "Tournois Marseillais"
address.each do |city, ad|
  ad.each do |address|
    date = "Sat, 24 Mar 2019"
    Tournament.create!({
      name: 'Les Catalans',
      date: date,
      serie: 'Série 1 - 1500',
      address: address,
      remarques: "Tenues identiques - Arbitres officiels - On boit du Pastis",
      equipe_tableau_principal: [12, 16].sample,
      wildcard_principal: [0, 2, 4].sample,
      place_reservees_qualif: [2, 4].sample,
      equipe_qualif: [12, 16].sample,
      wildcard_qualif: [0, 2].sample,
      terrains_normes: (0..4).to_a.sample,
      date_qualif: date,
      date_principal: date,
      prize_money: 900,
      split_prize_money: "1-60€ 2-40€ 3-30€",
      limit_inscription: date,
      reunion_qualif: date ,
      reunion_principal: date,
      ville: city,
      club_organisateur: Faker::Company.name,
      contact: ['0607080910', '0611121314', '0621222324'].sample,
      genre: "Homme",
      sku: (0...5).map { ('a'..'z').to_a[rand(26)] }.join,
      price_cents: 5000,
      photos: 'https://www.catalans-beach-volley.com/wp-content/uploads/2018/02/3x3_alancienne_CVBC.jpg'
    })
  end
end

address = { "Paris" => ["17 rue Bausset, Paris, France", "6 rue de Remusat, Paris, France", "16 Villa Gaudelet, Paris, France"], "Marseille" => ["5 rue paradis, Marseille, France", "10 rue roger brun, Marseille, France", "18 rue ferrari, Marseille, France"], "Lyon" => ["5 Rue de l'université, Lyon, France", "5 Rue Cuvier, Lyon, France", "9 Rue Billon, Lyon, France"], "Toulouse" => ["5 Rue des Fontaines, Toulouse, France", "5 Rue Corneille, Toulouse, France", "5 Rue Bernadette, Toulouse, France"], "Bordeaux" => ["5 Rue dr Bert, Bordeaux, France", "5 Rue Coli, Bordeaux, France", "5 Rue Tranchere, Bordeaux, France"]}
puts "Creating some tournaments"
address.each do |city, ad|
  ad.each do |address|
    array = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTowlAeeHu-eWOI4CCR3ULbYsUnAhJa5TN1ZxkwNJ54n6ZJtiJpBA", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Yqs3W6UgZQKIU9mJ2xlNDi13odx2AuM7fhwUYpwCPipM3m41bg", "https://admin.abc.sm/img/gallery/upload/6965/img_lastminute_273992.jpg", "https://www.planetesante.ch/var/ezdemo_site/storage/images/media/images/00-rubriques/sports-loisirs/beach_volley/35310-1-eng-GB/beach_volley_gallerylarge.jpg", "https://resize-europe1.lanmedia.fr/r/622,311,forcex,center-middle/img/var/europe1/storage/images/europe1/sport/jo-cerutti-et-schmidt-donnent-lor-du-beach-volley-au-bresil-2824741/28494703-1-fre-FR/JO-Cerutti-et-Schmidt-donnent-l-or-du-beach-volley-au-Bresil.jpg", "data:image/jpeg;base64,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", "https://images.laola1.tv/pool/5296_1920x1080.jpg", "https://streaming.imperial.plus/files/media-GRGQG-GFSSSRQQ-LLPXR-GQQXQF-GFSSRLGWXR-LLPXR-GFSSRLFRQRQF-X-FXWMQMGSQQ", "http://www.hotelalbizzia34.com/usermedia/photo-636239232597050007..jpg?dummy=0&h=800", "https://unss59dunkerque.fr/wp-content/uploads/2010/09/beach-volley-2.jpg", "https://www.batal.ma/wp-content/uploads/2018/07/beach-volleyball-fivb.jpg", "https://kinexon-sports.com/wp-content/uploads/2017/09/Beach_Majors_Hamburg_Visual.jpg"]
    date = Faker::Date.between(Date.today, 1.year.from_now)
    Tournament.create!({
      name: ['SSA Open #1', 'Beach Chiller #2', 'Beach Open #3', 'Mangeurs de sables #1', 'SSA Open #2', 'Beach Chiller #3', 'Beach Open #4', 'Mangeurs de sables #2'].sample,
      date: date,
      serie: ['Série 3 - 150', 'Série 2 - 1000', 'Série 2 - 250', 'Série 2 - 500', 'Série 2 - 750', 'Série 1 - 1500', 'Série 1 - 2500'].sample,
      address: address,
      remarques: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui, vero." ,
      equipe_tableau_principal: [12, 16].sample,
      wildcard_principal: [0, 2, 4].sample,
      place_reservees_qualif: [2, 4].sample,
      equipe_qualif: [12, 16].sample,
      wildcard_qualif: [0, 2].sample,
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
      contact: ['0607080910', '0611121314', '0621222324'].sample,
      genre: %w[Femme Homme].sample,
      sku: (0...5).map { ('a'..'z').to_a[rand(26)] }.join,
      price_cents: [1000, 1500, 2000, 2500, 3000].sample,
      photos: array.delete(array.sample),
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
