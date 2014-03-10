require 'spec_helper'

describe HomeController do 

  describe "GET index" do  
    it "shows the about page" do  
      get :index 
      response.should render_template :index
    end
  end

  describe "GET about" do  
    it "shows the about page" do  
      get :about 
      response.should render_template :about
    end
  end

  describe "GET projects" do  
    it "shows the about page" do  
      get :projects 
      response.should render_template :projects
    end
  end

end