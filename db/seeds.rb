# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ name: 'hoge' }, { name: 'huga' }])

users.each do |user|
  (1..10000).each do |i|
    Post.create(user: user, title: "title_#{i}", content: "content_#{i}")
  end
end
