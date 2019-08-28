module Features
	module SessionHelpers
		def sign_up
			visit new_user_registration_path

			fill_in "Email", with: "sue@example.com"
			fill_in "Password", with: "password"
			fill_in "Password confirmation", with: "password"

			click_button "Sign up"
		end

		def log_in(user)
			visit new_user_session_path

			fill_in "Email", with: user.email
			fill_in "Password", with: user.password

			click_button "Log in"
		end
	end
end