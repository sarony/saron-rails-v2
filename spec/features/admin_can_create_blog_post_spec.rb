require 'spec_helper'

feature "Admin can create new blog post" do  
  scenario "after clicking on the New Post link from Blog" do  
    ApplicationController.any_instance.stub(:admin?).and_return(true)
    
    visit blogs_path
    click_link("New Post")
    fill_in("Title", with: "First Blog Post")
    fill_in("Preview", with: "blog post preview")
    fill_in("Body", with: "this is pretty cool stuff yo")
    current_path.should == new_blog_path
    
    click_button("Create")
    current_path.should == blogs_path

    expect(page).to have_content("First Blog Post")
  end
end

feature "Visitor cannot create new blog post" do  
  scenario "and doesn't see New Post link on Blog" do  
    ApplicationController.any_instance.stub(:admin?).and_return(false)
    visit blogs_path

    expect(page).not_to have_link("New Post")
  end
end