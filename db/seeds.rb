# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


UserActivity.destroy_all
Activity.destroy_all
User.destroy_all

u1 = User.create(username: "Saman", password: "123")
u2 = User.create(username: "Omar", password: "123")



