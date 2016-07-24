require "rails_helper"

feature "User creates exercise" do
	scenario "successfully" do 
			
			sign_in

			click_on "Add a new exercise"
			fill_in "Name", with: "Benching"
			fill_in "Explan", with: "1"
			click_on "Submit"	

			expect(page).to have_css ".exercises li", text: "Benching"
			


	end
end