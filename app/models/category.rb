class Category < ActiveRecord::Base
	has_many :teams
	has_many :players

	has_many :manages
	has_many :users, through: :manages

end
