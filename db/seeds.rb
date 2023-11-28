# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Experience.create!(id: 1, name: '初心者')
Experience.create!(id: 2, name: '経験者')
Experience.create!(id: 3, name: '元整備士')
Experience.create!(id: 4, name: '現役整備士')
Experience.create!(id: 5, name: 'その他:業界関係者')

Category.create!(id: 1, name: '雑談', body: '何でもOK 困ったら使う')
Category.create!(id: 2, name: '挨拶', body: '挨拶する時に使う')
Category.create!(id: 3, name: '質問', body: '誰かに質問したい時に使う')
Category.create!(id: 4, name: '整備', body: '整備関係の投稿をするときに使う')
Category.create!(id: 5, name: '自慢', body: 'とにかく自慢したいときに使う')

admin = Admin.new(
  :id => 2,
  :email => 'admin@admin',
  :password => '000000',
  )
admin.save
