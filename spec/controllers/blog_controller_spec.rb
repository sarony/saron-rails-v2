require 'spec_helper'

describe BlogController do 
let(:blog){FactoryGirl.create(:blog_no_1)}

  describe "GET index" do  
    it "shows all the blogs page" do  
      get :index 
      assigns(:blogs).should include(blog)
      response.should render_template :index
    end
  end

end