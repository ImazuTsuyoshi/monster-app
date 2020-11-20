# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "今津剛",
  email: "sample@email.com",
  age: "29",
  gender: "男",
  phone: "09011112222",
  residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
  password: "password",
  password_confirmation: "password",
  admin: true,
  history: "10年",
  self_introduction: "小学校３年から高校の途中まで野球をやってました。ずっとピッチャーやっていて肩を壊してやめてしまいました。希望のボジションはファーストで希望の背番号は5です。よろしくお願いします。"
  )

  User.create!(name: "sampleuser",
    email: "sample1@email.com",
    age: "25",
    gender: "女",
    phone: "09011112222",
    residence: "愛知県名古屋市◯◯区◯◯◯ ◯-◯-◯",
    password: "password",
    password_confirmation: "password",
    history: "0年",
    self_introduction: "未経験ですが野球を見るのが好きでやってみたく応募させていただきました。希望のボジションはライトで希望の背番号は9です。よろしくお願いします。"
    )  

Tag.create([
  { name: '練習の日程' },
  { name: '練習試合の日程' },
  { name: '大会試合の日程' },
  { name: '試合結果' },
  { name: 'お知らせ' }
])
