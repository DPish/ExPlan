require "rails_helper"

feature "User visits homepage" do
	scenario "successful" do 
		visit root_path

		expect(page).to have_css 'h1', text: 'ExPlan'

	end
end