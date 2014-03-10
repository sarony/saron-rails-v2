FactoryGirl.define do
  factory :blog do
    factory :blog_no_1 do
      id 1
      title "No.1 Post"
      preview "This is the first post's preview"
      body "This is the body of the first post."
      slug "no-1-post"
    end

   factory :blog_no_2 do
      id 2
      title "No.2 Post"
      preview "This is the second post's preview"
      body "This is the body of the second post."
      slug "no-2-post"
    end

   factory :blog_no_3 do
      id 3
      title "No.3 Post"
      preview "This is the third post's preview"
      body "This is the body of the third post."
      slug "no-3-post"
    end

  end
end
