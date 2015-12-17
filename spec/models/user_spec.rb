require 'rails_helper'

RSpec.describe User, :type => :model do

  it 'can be saved' do
    user = User.new(email: 'admin@superadmin.fr', password: 'password0120', superadmin: false)
    expect(user.save!).to eq(true)
  end

end