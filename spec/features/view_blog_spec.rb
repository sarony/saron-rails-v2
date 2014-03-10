require 'spec_helper'

feature "Viewer sees all Blog posts" do  

  scenario "after clicking on the Blog link" do  
    visit blogs_path

    expect(page).to have_link("No. 1 Post")
    expect(page).to have_link("No. 2 Post")
    expect(page).to have_link("No. 3 Post")
  end

end