require 'spec_helper'

describe BlogController do 

  describe "GET index" do  
    it "shows all the blogs page" do 
      first_blog = FactoryGirl.create(:blog_no_1)
      get :index 

      assigns(:blogs).should include(first_blog)
      response.should render_template :index
    end
  end

  describe "GET show" do  
    it "shows the first blog" do 
      @first_blog = FactoryGirl.create(:blog_no_1)
      get :show, slug: @first_blog.id

      assigns(:blog).should eq(@first_blog)
      response.should render_template :show
    end
  end

  describe "GET new" do  
    it "shows the first blog" do 
      get :new

      assigns(:blog).should be_a(Blog)
      response.should render_template :new
    end
  end

end