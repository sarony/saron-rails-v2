require 'spec_helper'

feature "Viewer sees individual Blog posts" do  
  let(:blog_no_1){FactoryGirl.build(:blog_no_1)}
  let(:blog_no_2){FactoryGirl.build(:blog_no_2)}

  scenario "when visiting the show page for the blog post" do  
    # TODO: this feels forced. I think there's a better way to implement this
    # Blog.should_receive(:where).and_return([blog_no_1])
    blog_no_1=FactoryGirl.create(:blog_no_1)
    @blog = blog_no_1
    visit blog_post_path(blog_no_1)

    expect(page).to have_content("No.1 Post")
    expect(page).to have_content("This is the body of the first post.")

    expect(page).not_to have_content("This is the first post's preview")
    expect(page).not_to have_content("No.2 Post")
  end

end