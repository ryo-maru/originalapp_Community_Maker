# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: "フシギダネ",
  email: "Bulbasaur@example.jp" ,
  password: "password",
  description: :"こんにちは、フシギダネです",
  image: open("./db/fixtures/poke1.png")
 )

User.create!(
  name: "ヒトカゲ",
  email: "Charmander@example.jp" ,
  password: "password",
  description: :"こんにちは、ヒトカゲです",
  image: open("./db/fixtures/poke2.png")
)

User.create!(
  name: "ゼニガメ",
  email: "Squirtle@example.jp" ,
  password: "password",
  description: :"こんにちは、ゼニガメです",
  image: open("./db/fixtures/poke3.png")
)

User.create!(
  name: "キャタピー",
  email: "Caterpie@example.jp" ,
  password: "password",
  description: :"こんにちは、キャタピーです",
  image: open("./db/fixtures/poke4.png")
)

User.create!(
  name: "ビードル",
  email: "Weedle@example.jp" ,
  password: "password",
  description: :"こんにちは、ビードルです",
  image: open("./db/fixtures/poke5.png")
)

User.create!(
  name: "ポッポ",
  email: "Pidgey@example.jp" ,
  password: "password",
  description: :"こんにちは、ポッポです",
  image: open("./db/fixtures/poke6.png")
)

User.create!(
  name: "コラッタ",
  email: "Rattata@example.jp" ,
  password: "password",
  description: :"こんにちは、コラッタです",
  image: open("./db/fixtures/poke7.png")
)

User.create!(
  name: "オニスズメ",
  email: "Spearow@example.jp" ,
  password: "password",
  description: :"こんにちは、オニスズメです",
  image: open("./db/fixtures/poke8.png")
)

User.create!(
  name: "アーボ",
  email: "Ekans@example.jp" ,
  password: "password",
  description: :"こんにちは、アーボです",
  image: open("./db/fixtures/poke9.png")
)

User.create!(
  name: "ピカチュウ",
  email: "Pikachu@example.jp" ,
  password: "password",
  description: :"こんにちは、ピカチュウです",
  image: open("./db/fixtures/poke10.png")
)

User.create!(
  name: "サンド",
  email: "Sandshrew@example.jp" ,
  password: "password",
  description: :"こんにちは、サンドです",
  image: open("./db/fixtures/poke11.png")
)

User.create!(
  name: "ニドランメス",
  email: "Nidoranmesu@example.jp" ,
  password: "password",
  description: :"こんにちは、ニドランメスです",
  image: open("./db/fixtures/poke12.png")
)

User.create!(
  name: "ニドランオス",
  email: "Nidoranosu@example.jp" ,
  password: "password",
  description: :"こんにちは、ニドランオスです",
  image: open("./db/fixtures/poke13.png")
)

User.create!(
  name: "ピッピ",
  email: "Clefairy@example.jp" ,
  password: "password",
  description: :"こんにちは、ピッピです",
  image: open("./db/fixtures/poke14.png")
)

User.create!(
  name: "ロコン",
  email: "Vulpix@example.jp" ,
  password: "password",
  description: :"こんにちは、ロコンです",
  image: open("./db/fixtures/poke15.png")
)

User.create!(
  name: "プリン",
  email: "Jigglypuff@example.jp" ,
  password: "password",
  description: :"こんにちは、プリンです",
  image: open("./db/fixtures/poke16.png")
)

User.create!(
  name: "ズバット",
  email: "Zubat@example.jp" ,
  password: "password",
  description: :"こんにちは、ズバットです",
  image: open("./db/fixtures/poke17.png")
)

User.create!(
  name: "ナゾノクサ",
  email: "Oddish@example.jp" ,
  password: "password",
  description: :"こんにちは、ナゾノクサです",
  image: open("./db/fixtures/poke18.png")
)

User.create!(
  name: "パラス",
  email: "Paras@example.jp" ,
  password: "password",
  description: :"こんにちは、パラスです",
  image: open("./db/fixtures/poke19.png")
)

User.create!(
  name: "コンパン",
  email: "Venonat@example.jp" ,
  password: "password",
  description: :"こんにちは、コンパンです",
  image: open("./db/fixtures/poke20.png")
)

User.create!(
  name: "ディグダ",
  email: "Diglett@example.jp" ,
  password: "password",
  description: :"こんにちは、ディグダです",
  image: open("./db/fixtures/poke21.png")
)

User.create!(
  name: "管理者",
  email: "admin@example.jp" ,
  password: "password01",
  description: :"こんにちは、管理者です",
  admin: true,
  image: open("./db/fixtures/image1.jpeg")
)
User.create!(
  name: "ゲスト",
  email: "guest@example.com" ,
  password: "SecureRandom.urlsafe_base64",
  description: :"こんにちは、ゲストです",
  image: open("./db/fixtures/image1.jpeg")
)
User.create!(
  name: "ゲスト管理者",
  email: "guest_admin@example.com" ,
  password: "SecureRandom.urlsafe_base64",
  description: :"こんにちは、ゲスト管理者です",
  admin: true,
  image: open("./db/fixtures/image1.jpeg")
)

User.create!(
  name: "リョウマルヤマ",
  email: "RyoMaruyama@example.com" ,
  password: "password",
  description: :"ああああああああああああああああああああああああああああああああああああああああああああああ",
  image: open("./db/fixtures/line_106517040313220.jpg")
)



Community.create!(
 name: "野球小僧",
 description: "野球好き集まれ!プレイボール！！",
 user_id: 1,
 #comment:rand(1..29),
 #favorites:rand(1..10),
 #members:rand(1..10),
 image: open("./db/fixtures/81fs+JgzeaL.jpg")
)

Community.create!(
 name: "ラーメン大好き We Love Noodles",
 description: "ラーメン好きはこの指止まれ！！",
 user_id: 2,
 image: open("./db/fixtures/IMG_0969.jpeg")
)

Community.create!(
 name: "進撃の巨人Lover",
 description: "連載終わって寂しい人集合、好きなシーンについて語ろう",
 user_id: 3,
 image: open("./db/fixtures/images.jpeg")
)

Community.create!(
 name: "競馬好き",
 description: "秋のG1について語ろう、注目している馬などいれば",
 user_id: 4,
 image: open("./db/fixtures/images.Uma.jpeg")
)

Community.create!(
 name: "ポケモン愛好家",
 description: "ポケモン大好き！ポケモンマスターに俺はなる",
 user_id: 5,
 image: open("./db/fixtures/imagespoke.jpeg")
)
Community.create!(
 name: "加藤純一最強！加藤純一最強！",
 description: "全国の衛門集合だ！！",
 user_id: 6,
 image: open("./db/fixtures/download.jpeg")
)
Community.create!(
 name: "Among usで遊びましょう",
 description: "初心者もベテランも大歓迎",
 user_id: 7,
 image: open("./db/fixtures/download.png")
)

Community.create!(
 name: "1991年生まれのみんな",
 description: "仲良くおしゃべりしましょう、友達増やしたい人カモーン",
 user_id: 8,
 image: open("./db/fixtures/images1991.png")
)

Community.create!(
 name: "細美武士好き♪",
 description: "音楽フェスではかぶりつき〜♪",
 user_id: 9,
 image: open("./db/fixtures/downloadtakesi.jpeg")
)

Community.create!(
 name: "檜山沙耶ファンクラブ",
 description: "さやっち応援コミュニティです！さやっちしか勝たん！さやっちしか勝たん！さやっちしか勝たん！さやっちしか勝たん！",
 user_id: 10,
 image: open("./db/fixtures/downloadsaya.jpeg")
)

Community.create!(
 name: "集まれ！暴力の森",
 description: "凶暴な人集まれ！！",
 user_id: 25,
 image: open("./db/fixtures/download23.jpeg")
)

Community.create!(
 name: "コーギーLove",
 description: "プリプリなお尻が可愛い",
 user_id: 12,
 image: open("./db/fixtures/IMG_0381.jpeg")
)

Community.create!(
 name: "ラーメン二郎全店制覇目指してる人",
 description: "活動報告会しましょう、好きな二郎についておしゃべりしよう",
 user_id: 13,
 image: open("./db/fixtures/IMG_0579.jpeg")
)

Community.create!(
name: "横浜住みで釣り好きな人",
description: "釣った魚の報告や、釣り場情報の共有しましょう",
user_id: 14,
image: open("./db/fixtures/download44.jpeg")
)

Community.create!(
name: "スケートボードを始めたい人",
description: "初心者大歓迎！一緒に練習しましょう",
user_id: 15,
image: open("./db/fixtures/images8.jpeg")
)

Community.create!(
name: "2021年のフジロックに参加した人",
description: "思い出共有しましょう、来年に向けての反省点など",
user_id: 16,
image: open("./db/fixtures/download88.png")
)

Community.create!(
name: "本好きな人",
description: "最近読んで良かった本の共有や、好きな本について語りたいです",
user_id: 17,
image: open("./db/fixtures/download99.jpeg")
)

Community.create!(
name: "スカイロケットカンパニー社員",
description: "スカロケ好きな人、みんな愛してるよ",
user_id: 18,
image: open("./db/fixtures/download56.jpeg")
)

Community.create!(
name: "結婚生活の悩み",
description: "友人に相談できないこと、何でも聞きます",
user_id: 19,
image: open("./db/fixtures/download000.jpeg")
)

Community.create!(
name: "洋服売ります、買います！！",
description: "ファッション好き大歓迎",
user_id: 20,
image: open("./db/fixtures/images66.jpeg")
)

Community.create!(
name: "キャンプにいきたい",
description: "おすすめキャンプ場や、思い出の共有に使ってください",
user_id: 21,
image: open("./db/fixtures/download1223.jpeg")
)


29.times do |n|
 content = Faker::Games::Pokemon.name
 user_id = Faker::Number.between(from: 1, to: 25)
 Comment.create!(content: content,
                 community_id: 1,
                 user_id: user_id
              )
end

29.times do |n|
 content = Faker::Games::Pokemon.name
 user_id = Faker::Number.between(from: 1, to: 25)
 Comment.create!(content: content,
                 community_id: 2,
                 user_id: user_id
              )
end

29.times do |n|
 content = Faker::Games::Pokemon.name
 user_id = Faker::Number.between(from: 1, to: 25)
 Comment.create!(content: content,
                 community_id: 3,
                 user_id: user_id
              )
end

100.times do |n|
 content = Faker::Games::Pokemon.name
 user_id = Faker::Number.between(from: 1, to: 25)
 Comment.create!(content: content,
                 community_id: rand(4..21),
                 user_id: user_id
              )
end

100.times do |n|
 user_id = Faker::Number.between(from: 1, to: 25)
 Favorite.create!(user_id: user_id,
                  community_id: rand(1..21)
              )
end

100.times do |n|
 user_id = Faker::Number.between(from: 1, to: 25)
 Member.create!(user_id: user_id,
                community_id: rand(1..21)
              )
end

1.times do |n|
 Relationship.create!(followed_id: 1,
                      follower_id: 25
              )
end
