# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Project.seed do |s|
  s.id =1
  s.name = 'CampFire'
  s.content = '新しいLPを作成中です！'
  s.skill = 'React.js,Ruby'
  s.status = 'リリース前'
end

Project.seed do |s|
  s.id =2
  s.name = '令和'
  s.content = '新しい元号を作成中です！'
  s.skill = 'React.js,Ruby'
  s.status = 'リリース前'
end