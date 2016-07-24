class Explan < ApplicationRecord
	has_many :exercises 

	def self.search(search)
	  where("workout LIKE ?", "%#{search}%") 
	end




end
