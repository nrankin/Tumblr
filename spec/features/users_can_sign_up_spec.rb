feature 'users can sign up' do
	scenario 'new user registration' do
		sign_up

		expect(page).to have_content("You have signed up successfully")
	end

	scenario 'users can log in' do
		user = create(:user)

		log_in(user)

		expect(page).to have_content("Signed in successfully")
	end

	
end