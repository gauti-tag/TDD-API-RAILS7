FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "Tiehoule#{n}" }
    name { "Gautier" }
    url { "http://gautier.tiehoule.com" }
    avatar_url { "http://gautier.tiehoule.com/avatar" }
    provider { "Github" }
  end
end
