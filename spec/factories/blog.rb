FactoryGirl.define do
  factory :blog do
    factory :blog_no_1 do
      id 1
      title "No.1 Post"
      preview "This is the first post's preview"
      body "This is the body of the post."
    end
  end
end
