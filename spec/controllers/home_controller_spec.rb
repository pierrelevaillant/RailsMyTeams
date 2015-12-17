require 'rails_helper'
require 'rspec/rails'
# note: require 'devise' after require 'rspec/rails'
require 'devise'

RSpec.configure do |config|
  config.include Devise::TestHelpers, :type => :controller
end


RSpec.describe HomeController, :type => :controller do
  render_views

  describe "GET index" do
    it "returns http success and a homepage" do
      get :index
      expect(response).to have_http_status(:success)
      expect(response.body).to include("Équipes")
    end

    it "show category on home page" do
      category = Category.create(category_name: 'U12')

      get :index
      expect(response).to have_http_status(:success)
      expect(response.body).to include(category.category_name)
    end

    it "show team under the parent category" do
      category = Category.create(category_name: 'U17')
      team = Team.create(team_name: 'U17A', category: category)

      get :index
      expect(response).to have_http_status(:success)
      expect(response.body).to include(team.team_name)
    end

  end


  describe "GET about" do
    it "returns http success and a homepage" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET login" do
    it "returns http success and a homepage" do
      get :sign_in
      expect(response).to have_http_status(:success)
    end
  end

end
