
describe "posts/edit" do
  let(:user) { create(:user)}
  let(:post) { create(:post, user: user)}
  
  it "renders the edit post form" do
    assign(:post, post)
    render

    expect(rendered).to match /Editing Post/
    expect(rendered).to match /#{post.title}/
    expect(rendered).to match /#{post.content}/
 
  end
end

  
