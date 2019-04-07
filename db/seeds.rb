# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

User.create!(name: '斉藤', age: 35, address: '大阪')
User.create!(name: '田中', age: 21, address: '東京')
User.create!(name: '山岸', age: 32, address: '名古屋')
User.create!(name: '平', age: 33, address: '東京')
User.create!(name: '加藤', age: 25, address: '福岡')