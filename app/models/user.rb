class User < ActiveRecord::Base
	#See Bottle controller for explaination of associations. "-> {distinct}" attaches the bottles to a single instance of a wine.
	has_secure_password
	has_many :bottles
	has_many :notes, through: :bottles
	has_many :wines, -> {distinct}, through: :bottles
	validates :email, presence: true, uniqueness: true
end
