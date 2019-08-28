require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  let(:user) { create(:user)}
  let(:post) { create(:post, user: user)  }

  it "renders attributes in <p>" do
    assign(:post, post)
    
    render

    expect(rendered).to match(/#{post.title}/)
    expect(rendered).to match(/#{post.content}/)
  end
end
