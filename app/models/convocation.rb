class Convocation < ActiveRecord::Base
	validates :date, presence: true
	validates :home, presence: true
	validates :appointment_place, presence: true
	validates :appointment_time, presence: true
	validates :game_time, presence: true
	validates :opposing_team, presence: true
	validates :team_id, presence: true
	validates :players, presence: true

	belongs_to :team

	has_many :assigns
	has_many :players, through: :assigns

	accepts_nested_attributes_for :assigns
end
