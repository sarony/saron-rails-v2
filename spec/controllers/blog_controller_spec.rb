require 'spec_helper'

describe BlogController do 

  describe "GET index" do  
    let(:first_blog){FactoryGirl.create(:blog_no_1)}
    let(:second_blog){FactoryGirl.create(:blog_no_2)}

    it "shows all the blogs page" do  
      get :index 

      assigns('blogs').should include(first_blog)
      response.should render_template :index
    end
  end

end