require 'rails_helper'

RSpec.describe Team, :type => :model do

  it 'can be saved' do

  	category = Category.new(category_name: 'U17')
  	category.save!
  	team = Team.new(team_name: 'U17A', category: category)

    expect(team.save!).to eq(true)

  end

end