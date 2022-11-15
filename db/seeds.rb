# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Quad.delete_all
User.destroy_all

p 'Creating quad'
quads = Quad.create!([{ name: "Mango's quad", color: "red", power: 50, price: 150 },
  { name: "Pineappel's quad", color: "green", power: 45, price: 160 },
  { name: "Melon's quad", color: "blue", power: 40, price: 170 },
  { name: "Orange's quad", color: "orange", power: 35, price: 180 }
  ])
p "done bg #{Time.now}"
sleep(1)

p 'Creating user'
users = User.create!([{ name: "garry", email: "garry@gmail.com", password: "123456" },
  { name: "kelly", email: "kelly@gmail.com", password: "123456" },
  { name: "stephane", email: "stephane@gmail.com", password: "123456" },
  ])
puts 'done'
