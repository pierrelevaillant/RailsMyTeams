class Player < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true

	belongs_to :category
	
	has_many :assigns
	has_many :convocations, through: :assigns

	accepts_nested_attributes_for :category
	accepts_nested_attributes_for :convocations

	def name
		self.first_name + ' ' + self.last_name
	end

end
