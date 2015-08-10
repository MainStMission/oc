FactoryGirl.define do

  factory :user, class:  "User" do
    first_name "Tom"
    last_name  "Brooke"
    email      "tom.brooke@gmail.com"
    password "mainstreet"
  end
end
