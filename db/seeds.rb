# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 21.times do |n|
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
  description: "野球好き集まれ!プレイボール！！",
  user_id: 1
)

Community.create!(
 name: "ラーメン大好き We Love Noodles",
 description: "ラーメン好きはこの指止まれ！！",
 user_id: 2
)

Community.create!(
 name: "進撃の巨人Lover",
 description: "連載終わって寂しい人集合、好きなシーンについて語ろう",
 user_id: 3
)

Community.create!(
 name: "競馬好き",
 description: "秋のG1について語ろう、注目している馬などいれば",
 user_id: 4
)

Community.create!(
 name: "ポケモン愛好家",
 description: "ポケモン大好き！ポケモンマスターに俺はなる",
 user_id: 5
)
Community.create!(
 name: "加藤純一最強！加藤純一最強！",
 description: "全国の衛門集合だ！！",
 user_id: 6
)
Community.create!(
 name: "Among usで遊びましょう",
 description: "初心者もベテランも大歓迎",
 user_id: 7
)

Community.create!(
 name: "1991年生まれのみんな",
 description: "仲良くおしゃべりしましょう、友達増やしたい人カモーン",
 user_id: 8
)

Community.create!(
 name: "細美武士好き♪",
 description: "音楽フェスではかぶりつき♪",
 user_id: 9
)

Community.create!(
 name: "檜山沙耶ファンクラブ",
 description: "ウェザーニュースキャスターのさやっち応援コミュニティです",
 user_id: 10
)

Community.create!(
 name: "集まれ！暴力の森",
 description: "凶暴な人集まれ！！",
 user_id: 11
)

Community.create!(
 name: "コーギーLove",
 description: "プリプリなお尻が可愛い",
 user_id: 12
)

Community.create!(
 name: "ラーメン二郎全店制覇目指してる人",
 description: "活動報告会しましょう、好きな二郎についておしゃべりしよう",
 user_id: 13
)

Community.create!(
name: "横浜住みで釣り好きな人",
description: "釣った魚の報告や、釣り場情報の共有しましょう",
user_id: 14
)

Community.create!(
name: "オリンピックのスケートボードを見て始めたいと思った人",
description: "初心者大歓迎！一緒に練習しましょう",
user_id: 15
)

Community.create!(
name: "2021年のフジロックに参加した人",
description: "思い出共有しましょう、来年に向けての反省点など",
user_id: 16
)

Community.create!(
name: "本好きな人",
description: "最近読んで良かった本の共有や、好きな本について語りたいです",
user_id: 17
)

Community.create!(
name: "スカイロケットカンパニー社員",
description: "スカロケ好きな人、みんな愛してるよ",
user_id: 18
)

Community.create!(
name: "結婚生活の悩み",
description: "友人に相談できないこと、何でも聞きます",
user_id: 19
)

Community.create!(
name: "洋服売ります、買います！！",
description: "服を整理したいけど、メルカリはめんどくさい！そんな人集まれ、ファッション好きも大歓迎",
user_id: 20
)

Community.create!(
name: "キャンプにいきたい",
description: "おすすめキャンプ場や、思い出の共有に使ってください",
user_id: 21
)


Comment.create!(
 community_id: 2,
 content: "面白そう！！",
 user_id: 2
)

Comment.create!(
 community_id: 1,
 content: "前から気になってたんだよね--",
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
