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
address = %w[Paris Marseille Lyon Toulouse Nice Nantes Montpellier Strasbourg Bordeaux Lille Rennes Reims Saint-Etienne Le\ Havre Toulon Grenoble Dijon Angers Nimes Villeurbanne]
puts "Creating some tournaments"
address.each do |ad|
  Tournament.create!({
    name: Faker::Esport.event,
    date: Faker::Date.between(Date.today, 1.year.from_now),
    serie: ['Série 1 - 250', 'Série 1 - 1500', 'Série 2 - 50', 'Série 2 - 100'].sample,
    address: ad,
  })
end
puts 'Tournaments created'

puts 'Everything is ready guys!!'
