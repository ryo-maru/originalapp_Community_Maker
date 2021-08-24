FactoryBot.define do
  factory :community, class: Community do
    name { 'example01' }
    description { 'テストコミュニティ' }
  end

  factory :community2, class: Community do
    name { 'example02' }
    description { 'テストコミュニティ02' }
  end
end
