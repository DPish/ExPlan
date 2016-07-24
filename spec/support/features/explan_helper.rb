module Features
	def create_explan (explan_workout)
		click_on "Add a new explan"
		fill_in "Workout", with: explan_workout
		click_on "Submit"
	end

	def display_explan (explan_workout)
		have_css ".explans li", text: explan_workout
	end

end