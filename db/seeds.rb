# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a main sample user.
user = User.create!(name: "Hamma", email: "hammaagazarok@gmail.com", password: "123456")
group = Group.create!(name: "Group 1", user_id: user.id)
payment = Payment.create!(name:"Payment 1", amount: 100, author_id: user.id)
