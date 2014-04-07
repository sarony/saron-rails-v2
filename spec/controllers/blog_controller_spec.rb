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
    it "shows the new form for a blog post" do 
      get :new

      assigns(:blog).should be_a(Blog)
      response.should render_template :new
    end
  end

  describe "POST create" do  
    it "creates a new blog" do 
      post :create, :blog => {:title => "First Blog Post", :preview => "first blog post preview", :body => "I'm the body yo."}

      assigns(:blog).should be_a(Blog)
      response.should redirect_to blogs_path
    end
  end

  describe "GET edit" do  
    it "edits a blog" do
      @first_blog = FactoryGirl.create(:blog_no_1) 
      get :edit, :slug => @first_blog.id

      assigns(:blog).should be_a(Blog)
      response.should render_template :edit
    end
  end

  describe "PATCH edit" do  
    it "updates a blog" do
      @first_blog = FactoryGirl.create(:blog_no_1) 
      patch :update, {:slug => @first_blog.id, :blog => {:title => "First Edited Blog Post"}}

      assigns(:blog).should be_a(Blog)
      response.should redirect_to blogs_path
    end
  end

end







