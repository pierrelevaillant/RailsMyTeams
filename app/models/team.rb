class Team < ActiveRecord::Base
	belongs_to :category

	has_many :assigns
	has_many :players, through: :assigns

  	accepts_nested_attributes_for :players
end
