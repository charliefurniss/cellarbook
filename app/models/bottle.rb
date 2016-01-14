class Bottle < ActiveRecord::Base
	#Bottle is the table that connects users with wines. So one user can have more than one bottle of a particular wine and one wine can have more than one user. Each entry in the table is connected to a single note
	belongs_to :user
	belongs_to :wine
	has_many :notes
end
