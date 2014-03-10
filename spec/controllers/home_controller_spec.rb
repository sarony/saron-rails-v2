require 'spec_helper'

describe HomeController do 

  describe "GET about" do  

    it "shows the about page" do  

      get :about 
      response.should render_template :about

    end

  end

end