require 'rails_helper'

feature 'users can sign up' do
	scenario 'new user registration' do
		visit new_user_registration_path

		fill_in "Email", with: "sue@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"
		click_button "Sign up"

		expect(page).to have_content("You have signed up successfully")
	end
	
end