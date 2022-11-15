# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Quad.delete_all

quads = Quad.create!([{ name: "Mango's quad", color: "red", power: 50 },
  { name: "Pineappel's quad", color: "green", power: 45 },
  { name: "Melon's quad", color: "blue", power: 40 },
  { name: "Orange's quad", color: "orange", power: 35 }
  ])
