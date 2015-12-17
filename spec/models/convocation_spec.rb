require 'rails_helper'

RSpec.describe Convocation, :type => :model do

  it 'can be saved' do

  	category = Category.create(category_name: 'U13')
	team = Team.create(team_name: 'U13A', category: category)

    convocation = Convocation.create(opposing_team: Faker::Address.city, home: rand(0..1), date: Faker::Time.between(DateTime.now - 1, DateTime.now), appointment_place: Faker::Address.street_name, appointment_time: Faker::Time.between(DateTime.now - 1, DateTime.now), game_time: Faker::Time.between(DateTime.now - 1, DateTime.now), team: team)

    expect(convocation.save!).to eq(true)
  end

  it 'link players to a convocation' do
    category = Category.create(category_name: 'U13')
	team = Team.create(team_name: 'U13A', category: category)

	players = []
	2.times do |variable|
		players << Player.create(last_name: Faker::Name.last_name, first_name: Faker::Name.last_name, category: category)
	end

    convocation = Convocation.create(opposing_team: Faker::Address.city, home: rand(0..1), date: Faker::Time.between(DateTime.now - 1, DateTime.now), appointment_place: Faker::Address.street_name, appointment_time: Faker::Time.between(DateTime.now - 1, DateTime.now), game_time: Faker::Time.between(DateTime.now - 1, DateTime.now), team: team, players: players)

    expect(convocation.players[0].first_name).to eq(players[0].first_name)
  end

end