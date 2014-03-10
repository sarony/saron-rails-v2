require 'spec_helper'

feature "Viewer sees all Blog posts" do  
  let(:blog_no_1){FactoryGirl.create(:blog_no_1)}
  let(:blog_no_2){FactoryGirl.create(:blog_no_2)}

  scenario "after clicking on the Blog link" do  
    visit blog_path

    expect(page).to have_content("No. 1 Post")
    expect(page).to have_link("No. 1 Post")

    expect(page).to have_link("No. 2 Post")
  end

end