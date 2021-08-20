# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 5.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               image: open("./db/fixtures/image#{1}.jpeg")
               )
end

User.create!(
  name: "管理者",
  email: "admin@example.jp" ,
  password: "password01",
  admin: true,
  image: open("./db/fixtures/image1.jpeg")
 )
 User.create!(
   name: "ゲスト",
   email: "guest@example.com" ,
   password: "SecureRandom.urlsafe_base64",
   image: open("./db/fixtures/image1.jpeg")
  )
  User.create!(
    name: "ゲスト管理者",
    email: "guest_admin@example.com" ,
    password: "SecureRandom.urlsafe_base64",
    admin: true,
    image: open("./db/fixtures/image1.jpeg")

   )

 Community.create!(
  name: "野球小僧",
  description: "野球好き集まれ",
  user_id: 2
)

Community.create!(
 name: "ラーメン大好き We Love Noodles",
 description: "ラーメン好きは",
 user_id: 3
)

Community.create!(
 name: "進撃の巨人",
 description: "連載終わって寂しい人集合",
 user_id: 4
)

Community.create!(
 name: "競馬好き",
 description: "秋のG1について語ろう",
 user_id: 5
)

Community.create!(
 name: "ポケモン愛好家",
 description: "ポケモン大好き！",
 user_id: 6
)

Comment.create!(
 community_id: 2,
 content: "面白そう！！",
 user_id: 2
)

Comment.create!(
 community_id: 1,
 content: "前から気になってたんだよねこれ",
 user_id: 1
)



29.times do |n|
 content = Faker::Games::Pokemon.name
 user_id = Faker::Number.between(from: 1, to: 6)
 Comment.create!(content: content,
                 community_id: 5,
                 user_id: user_id
              )
end

29.times do |n|
 content = Faker::Games::Pokemon.name
 user_id = Faker::Number.between(from: 1, to: 6)
 Comment.create!(content: content,
                 community_id: 4,
                 user_id: user_id
              )
end

29.times do |n|
 content = Faker::Games::Pokemon.name
 user_id = Faker::Number.between(from: 1, to: 6)
 Comment.create!(content: content,
                 community_id: 3,
                 user_id: user_id
              )
end
