# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
end

categories = Category.create([ 
	{category_name: 'U13'},
	{category_name: 'U15'},
	{category_name: 'U17'},
	{category_name: 'U19'},
	{category_name: 'Séniors'}
	])

teams = Team.create([
	{team_name: 'U13A', category: categories[0]},
	{team_name: 'U13B', category: categories[0]},
	{team_name: 'U13C', category: categories[0]},
	{team_name: 'U15A', category: categories[1]},
	{team_name: 'U15B', category: categories[1]},
	{team_name: 'U15C', category: categories[1]},
	{team_name: 'U17A', category: categories[2]},
	{team_name: 'U17B', category: categories[2]},
	{team_name: 'U17C', category: categories[2]},
	{team_name: 'U19A', category: categories[3]},
	{team_name: 'U19B', category: categories[3]},
	{team_name: 'U19C', category: categories[3]},
	{team_name: 'Séniors A', category: categories[4]},
	{team_name: 'Séniors B', category: categories[4]},
	{team_name: 'Séniors C', category: categories[4]},
	])

user1 = User.create! :email => 'admin@admin.fr', :password => 'superadmin', :password_confirmation => 'superadmin', :superadmin => true
user2 = User.create! :email => 'user1@user.fr', :password => 'useruser', :password_confirmation => 'useruser', :categories => [categories[0],categories[1],categories[2]]
user2 = User.create! :email => 'user2@user.fr', :password => 'useruser', :password_confirmation => 'useruser', :categories => [categories[3],categories[4]]


players = []
100.times do |variable|
	players << Player.create(last_name: Faker::Name.last_name, first_name: Faker::Name.last_name, category: categories[rand(0..4)])
end

20.times do |variable|
	Convocation.create(opposing_team: Faker::Address.city, home: rand(0..1), date: Faker::Time.between(DateTime.now - 1, DateTime.now), appointment_place: Faker::Address.street_name, appointment_time: Faker::Time.between(DateTime.now - 1, DateTime.now), game_time: Faker::Time.between(DateTime.now - 1, DateTime.now), team: teams[rand(0..13)], players: [players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)],players[rand(0..99)]] )
end
