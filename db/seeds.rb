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
               )
end

User.create!(
  name: "管理者",
  email: "admin@example.jp" ,
  password: "password01",
  admin: true
 )

 Community.create!(
  name: "野球小僧",
  description: "野球好き集まれ",
  user_id: 2
)

Community.create!(
 name: "ラーメン大好き",
 description: "ラーメン好き集まれ",
 user_id: 3
)

Community.create!(
 name: "進撃の巨人好き",
 description: "連載終わって寂しい人",
 user_id: 4
)

Community.create!(
 name: "競馬好き",
 description: "秋のG1について語ろう",
 user_id: 5
)

Community.create!(
 name: "犬好き",
 description: "犬好き集まれ！猫好きももちろん",
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

Comment.create!(
 community_id: 3,
 content: "参加キボンヌ",
 user_id: 3
)

Comment.create!(
 community_id: 4,
 content: "僕でよかったらいつでも参加できます",
 user_id: 4
)

Comment.create!(
 community_id: 5,
 content: "友達増やしたいです",
 user_id: 5
)
