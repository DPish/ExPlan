class Explan < ApplicationRecord

	def self.search(search)
	  where("workout LIKE ?", "%#{search}%") 
	end




end
