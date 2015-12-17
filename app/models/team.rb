class Team < ActiveRecord::Base
	validates :team_name, presence: true
	validates :category, presence: true

	belongs_to :category
end
