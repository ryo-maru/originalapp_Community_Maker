FactoryBot.define do
  factory :user, class: User do
    name { 'test01' }
    email { 'test01@test.com' }
    password { 'test01' }
    password_confirmation { 'test01' }
    admin { 'false' }
  end

  factory :admin_user, class: User do
    name { 'admin01' }
    email { 'admin01@test.com' }
    password { 'admin01' }
    password_confirmation { 'admin01' }
    admin { 'true' }
  end

  factory :user2, class: User do
    name { 'test2' }
    email { 'test2@test.com' }
    password { 'test02' }
    password_confirmation { 'test02' }
    admin { 'false' }
  end

  factory :user3, class: User do
    name { 'test03' }
    email { 'test03@test.com' }
    password { 'test03' }
    password_confirmation { 'test03' }
    admin { 'false' }
  end

  factory :user4, class: User do
    name { 'test04' }
    email { 'test04@test.com' }
    password { 'test04' }
    password_confirmation { 'test04' }
    admin { 'false' }
  end

  factory :user5, class: User do
    name { 'test05' }
    email { 'test05@test.com' }
    password { 'test05' }
    password_confirmation { 'test05' }
    admin { 'false' }
  end
end
