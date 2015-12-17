require 'rails_helper'

RSpec.describe Player, :type => :model do

  it 'can be saved' do
  	category = Category.new(category_name: 'U19')

    player = Player.new(last_name: 'Iniesta', first_name: 'Andres', category: category)

    expect(player.save!).to eq(true)
    expect(player.category.category_name).to eq(category.category_name)
  end

end