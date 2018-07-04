# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admins = [{
	email: 'bhuiya@gmail.com',
  password: '123456'
},
{
  email: 'demo@demo.com',
  password: '123456'
 }

]

admins.each do |s|
	Admin.create(s) unless Admin.exists?(email: s[:email])
end


bookings = [{
  name: 'newyork',
  price: '400',
  address: '40 time square',
  state: 'New York',
  country: 'USA',
  phone: '6468048996',
  email: 'demo@demo.com'

},
{
  name: 'newjsersey',
  price: '350',
  address: '40 jersey city',
  state: 'New Jersey',
  country: 'USA',
  phone: '6468048996',
  email: 'bhuiya@demo.com'
 }
]

bookings.each do |s|
	Booking.create(s) unless Booking.exists?(name: s[:name])
end
