class Convocation < ActiveRecord::Base
	validates :date, presence: true
	validates :appointment_place, presence: true
	validates :appointment_time, presence: true
	validates :game_time, presence: true
	validates :opposing_team, presence: true
	validates :team, presence: true

	belongs_to :team

	belongs_to :user

	has_many :assigns
	has_many :players, through: :assigns

	accepts_nested_attributes_for :assigns
	accepts_nested_attributes_for :players
end
