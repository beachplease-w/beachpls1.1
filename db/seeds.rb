puts "Cleaning Tournaments"
Tournament.destroy_all
puts "Cleaning Users"
User.destroy_all

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
user3.password = 'yoanbendavid'
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
      prize_money: (100..500).to_a.sample,
      split_prize_money: "1-60€ 2-40€ 3-30€",
      limit_inscription: date,
      reunion_qualif: date ,
      reunion_principal: date,
      ville: city,
      club_organisateur: Faker::Company.name,
      contact: Faker::PhoneNumber.cell_phone,
      genre: %w[Femme Homme],
      sku: "qwerty",
      price_cents: (100..300).to_a.sample,
    })
  end
end
puts 'Tournaments created'

puts 'Everything is ready guys!!'
