require "rails_helper"

feature "User creates a workout" do
	scenario "Successful" do

		sign_in

		create_explan "Chest"

		expect(page).to display_explan "Chest"

	end

end
