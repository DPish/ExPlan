require "rails_helper"

feature "User sees explan" do
	scenario "successfully" do
		Explan.create!(workout: "Chest", email: "someone_else@example.com")
		Explan.create!(workout: "Legs", email: "someone_else@example.com")

		sign_in_as "someone_else@example.com"		


		fill_in 'search', with: 'Chest'
		click_on 'Search'
						
		expect(page).to display_explan 'Chest'
		expect(page).not_to display_explan 'Legs'
	end
end

