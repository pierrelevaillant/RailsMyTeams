class Player < ActiveRecord::Base
	belongs_to :category
	
	has_many :assigns
	has_many :convocations, through: :assigns

end
