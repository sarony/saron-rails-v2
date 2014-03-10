require 'spec_helper'

describe Blog do
  let(:blog_no_1) { FactoryGirl.create(:blog_no_1) }

  describe "blog" do
    it "should have a title" do
      expect(blog_no_1.title).to eq("No.1 Post")
    end
    
    it "should have a preview" do
      expect(blog_no_1.preview).to eq("This is the first post's preview")
    end
    
    it "should have a body" do
      expect(blog_no_1.body).to eq("This is the body of the post.")
    end
  end

end
