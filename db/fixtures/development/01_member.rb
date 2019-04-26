# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Member.seed do |s|
s.id =1
s.name = '田中太郎'
s.profile = 'Start Up Studio'
s.skill = 'React.js,Ruby'
s.project = 'Campfire'
s.coment = '宜しくお願いします。'
end

  Member.seed do |s|
s.id =2
s.name = '平成太郎'
s.profile = 'Start Up Studio'
s.skill = 'React.js,Ruby'
s.project = 'Campfire'
s.coment = '宜しくお願いします。'
end

  Member.seed do |s|
s.id =3
s.name = '令和太郎'
s.profile = 'Start Up Studio'
s.skill = 'React.js,Ruby'
s.project = 'Campfire'
s.coment = '宜しくお願いします。'
end