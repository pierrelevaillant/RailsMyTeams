class User < ActiveRecord::Base
	has_many :convocations

	has_many :manages
	has_many :categories, through: :manages

	devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable
end
