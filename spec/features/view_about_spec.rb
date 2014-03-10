require 'spec_helper'

feature "Viewer sees About" do  

  scenario "after clicking on the about link" do  
    visit about_path

    expect(page).to have_content("About")
  end

end