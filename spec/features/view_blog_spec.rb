require 'spec_helper'

feature "Viewer sees all Blog posts" do  

  scenario "after clicking on the Blog link" do  
    blog_no_1=FactoryGirl.build(:blog_no_1)
    blog_no_2=FactoryGirl.build(:blog_no_2)
    Blog.should_receive(:all).and_return([blog_no_1, blog_no_2])

    visit blogs_path

    expect(page).to have_content("No.1 Post")
    expect(page).to have_content("This is the first post's preview")

    expect(page).to have_link("No.1 Post")
    expect(page).to have_link("No.2 Post")
  end

end