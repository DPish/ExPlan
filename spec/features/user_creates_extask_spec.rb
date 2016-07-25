require "rails_helper"

feature "User creates extask" do
	scenario "successfully" do 
			
			sign_in

			click_on "Add a new extask"
			fill_in "Reps", with: "15"
			fill_in "Pounds", with: "45"
			fill_in "Sets", with: "4"
			fill_in "Exercise", with: "1"
			click_on "Submit"	

			expect(page).to have_css ".extasks li", text: "15 45 4 1"
			


	end
end