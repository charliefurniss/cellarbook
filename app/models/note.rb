class Note < ActiveRecord::Base
	#each note is connected to a single bottle
	belongs_to :bottle
end
