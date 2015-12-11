class Team < ActiveRecord::Base
	validates :team_name, presence: true
	validates :category_id, presence: true

	belongs_to :category
end
