FactoryBot.define do
  factory :comment, class: Comment do
    user_id { 1 }
    community_id { 2 }
    content {'wwww'}
  end
end
