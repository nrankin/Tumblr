feature 'users can manage their posts' do
	scenario 'users can view their posts' do
		user = create(:user)
		log_in(user)
		post = create(:post, user: user)

		visit posts_path

		expect(page).to have_content("Post Feed")
		expect(page).to have_content(post.title)
	end
end