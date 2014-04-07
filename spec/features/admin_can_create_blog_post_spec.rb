require 'spec_helper'

feature "Admin can create new blog post" do  

  scenario "after clicking on the New Post link from Blog" do  
    visit blog_path
    click_link("New Post")

    current_path.should == new_blog_post_path
    expect(page).to have_content("New Post")
  end

end

feature "Visitor cannot create new blog post" do  

  scenario "and doesn't see New Post link on Blog" do  
    visit blog_path

    expect(page).not_to have_link("New Post")
  end

end