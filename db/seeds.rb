# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Experience.find_or_create_by(id: 1) do |experience|
  experience.name = '初心者'
end

Experience.find_or_create_by(id: 2) do |experience|
  experience.name = '経験者'
end

Experience.find_or_create_by(id: 3) do |experience|
  experience.name = '元整備士'
end

Experience.find_or_create_by(id: 4) do |experience|
  experience.name = '現役整備士'
end

Experience.find_or_create_by(id: 5) do |experience|
  experience.name = 'その他:業界関係者'
end

Category.find_or_create_by(id: 1) do |category|
  category.name = '雑談'
  category.body = '何でもOK 困ったら使う'
end

Category.find_or_create_by(id: 2) do |category|
  category.name = '挨拶'
  category.body = '挨拶する時に使う'
end

Category.find_or_create_by(id: 3) do |category|
  category.name = '質問'
  category.body = '誰かに質問したい時に使う'
end

Category.find_or_create_by(id: 4) do |category|
  category.name = '整備'
  category.body = '整備関係の投稿をするときに使う'
end

Category.find_or_create_by(id: 5) do |category|
  category.name = '自慢'
  category.body = 'とにかく自慢したいときに使う'
end

Admin.find_or_create_by(email: "admin@admin") do |admin|
  admin.email = 'admin@admin'
  admin.password = '000000'
end

