# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Booking.destroy_all
User.destroy_all
Quad.delete_all

p 'Creating user'
users = User.create!([{ name: "garry", email: "garry@gmail.com", password: "123456" },
  { name: "kelly", email: "kelly@gmail.com", password: "123456" },
  { name: "stephane", email: "stephane@gmail.com", password: "123456" },
  ])
  puts 'done'

  p 'Creating quad'
  quads = Quad.create!([{ name: "Terminator", color: "black", power: 50, price: 150, free: true, img: "https://images.unsplash.com/photo-1549221279-aca391fb56d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cXVhZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", address: "Rue de la République, 97200 Fort-de-France" },
    { name: "Classic", color: "blue", power: 45, price: 160 , free: true, img: "https://images.unsplash.com/photo-1503438792824-0882f145c89d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cXVhZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", address: "Habitation Petit Morne, 97232 Le Lamentin" },
    { name: "Woman's friendly", color: "blue", power: 40, price: 170, free: true, img: "https://images.unsplash.com/photo-1516933857371-5a895d657803?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fHF1YWR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60", address: "Habitation Petit Morne, 97232 Le Lamentin" },
    { name: "For the kid", color: "orange", power: 35, price: 180, free: true, img:"https://images.unsplash.com/photo-1532934133442-e9cb961676f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fHF1YWR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60", address: "Rue de la République, 97200 Fort-de-France" },
  ])

  p "done bg #{Time.now}"
  sleep(1)
