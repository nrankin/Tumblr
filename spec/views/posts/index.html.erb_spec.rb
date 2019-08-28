require 'rails_helper'

describe "posts/index" do
  let(:user) { create(:user) }
  let(:posts) { [create(:post, user: user), create(:post, user: user)] }
  before(:each) do
    assign(:posts, posts)
  end

  it "renders a list of posts" do
    render
    title1 = posts[0].title
    expect(rendered).to match /#{title1}/
  end
end
