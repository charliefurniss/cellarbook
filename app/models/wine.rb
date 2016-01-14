class Wine < ActiveRecord::Base
	#See Bottle controller for explaination of associations.
	has_many :bottles
	has_many :users, through: :bottles
	has_many :notes, through: :bottles
end
