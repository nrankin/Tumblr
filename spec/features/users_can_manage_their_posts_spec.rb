feature 'users can manage their posts' do
	scenario 'users can view their posts' do
		user = create(:user)
		
		posts = create_list(:post, 3, user: user)
		date0 = time_ago_in_words(posts[0].created_at)

		log_in(user)
		visit posts_path

		

		expect(page).to have_content("Post Feed")
		expect(page).to have_content(posts[0].title)
		expect(page).to have_content(posts[0].content)
		expect(page).to have_content(date0)

		expect(page).to have_content(posts[1].title)
		expect(page).to have_content(posts[1].content)
	end
end