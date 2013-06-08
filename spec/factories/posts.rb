FactoryGirl.define do
  factory :post do |f|
    f.title "My first blog post"
    f.body "Lorem ipsum dolor sit amet, consectetur adipiscing elit. " +
           "Phasellus a metus magna. In lobortis augue enim, dapibus " +
           "consequat ipsum faucibus non. Fusce sit amet convallis orci."
  end
end
