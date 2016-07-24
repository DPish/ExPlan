class User

	def initialize(email)
			@email = email
	end
	
	def explans
		Explan.where(email: @email)
	end

	def signed_in?
		@email.present?

	end
end