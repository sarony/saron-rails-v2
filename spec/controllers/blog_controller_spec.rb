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

  describe "GET show" do  
    let(:first_blog){FactoryGirl.create(:blog_no_1)}

    it "shows the first blog" do 
      get :show, slug: first_blog.slug

      assigns('blog').should eq(first_blog)
      response.should render_template :show
    end
  end

end