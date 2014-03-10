require 'spec_helper'

feature "Viewer sees Projects" do  

  scenario "after clicking on the projects link" do  
    visit projects_path

    expect(page).to have_content("Projects")
  end

end