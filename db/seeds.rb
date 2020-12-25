# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new(email: "bernard@gmail.com", password: "mercibeaucoup")
user1.save

puts "User saved !"

task1 = Task.new(title: "Décorer le sapin", deadline: Date.new(2020, 12, 23), done: true)
task1.user = user1
task1.save

puts "Task saved !"

comment1 = Comment.new(content: "Mettre les guirlandes avant les boules !")
comment1.task = task1
comment1.save

puts "Comment saved !"
