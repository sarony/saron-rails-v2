require 'spec_helper'

feature "Viewer sees individual Blog posts" do  

  scenario "when visiting the show page for the blog post" do  

    blog_no_1=FactoryGirl.create(:blog_no_1)
    @blog = blog_no_1
    visit blog_post_path(@blog)

    expect(page).to have_content("This is the body of the first post.")
    expect(page).to have_content("No.1 Post")
    

  end

end