require 'rails_helper'

RSpec.describe Category, :type => :model do

  it 'can be saved' do
    category = Category.new(category_name: 'U19')
    expect(category.save!).to eq(true)
  end

end