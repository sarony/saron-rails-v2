require 'spec_helper'

feature "Viewer sees Homepage" do  

  scenario "after clicking on the homepage link" do  
    visit root_path

    expect(page).to have_link("About")
    expect(page).to have_link("Projects")
    expect(page).to have_link("Blog")
    expect(page).to have_content("Saron")
  end

end