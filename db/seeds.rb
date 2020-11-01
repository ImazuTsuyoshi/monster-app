# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Sample User",
  email: "sample@email.com",
  password: "password",
  password_confirmation: "password",
  admin: true,
  uniform: "1",
  position: "ピッチャー",
  phone: "08011112222",
  history: "10年",
  address: "愛知県名古屋市港区名港1-11-19",
  self_introduction: "よろしくお願いします"
  )

Tag.create([
  { name: '練習の日程' },
  { name: '練習試合の日程' },
  { name: '大会試合の日程' },
  { name: 'お知らせ' }
])
