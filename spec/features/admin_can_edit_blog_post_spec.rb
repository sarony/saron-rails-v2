require 'spec_helper'

feature "Admin can edit a blog post" do  
  scenario "after clicking on the Edit Post link from Blog" do  
    ApplicationController.any_instance.stub(:admin?).and_return(true)
    @first_blog = FactoryGirl.create(:blog_no_1)
    
    visit blogs_path
    click_link("Edit")
    fill_in("blog_title", with: "Edited First Blog Post")
    fill_in("blog_body", with: "this is pretty cool stuff yo")
    
    click_button("Update")
    current_path.should == blogs_path

    expect(page).to have_content("Edited First Blog Post")
  end
end

feature "Visitor cannot edit a blog post" do  
  scenario "and doesn't see Edit Post link on Blog" do  
    ApplicationController.any_instance.stub(:admin?).and_return(false)
    visit blogs_path

    expect(page).not_to have_link("Edit")
  end
end