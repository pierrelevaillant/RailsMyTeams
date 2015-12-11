class Team < ActiveRecord::Base
	validates :team_name, presence: true
	validates :category_id, presence: true

	belongs_to :category

	has_many :assigns
	has_many :players, through: :assigns

  	accepts_nested_attributes_for :assigns
end
