# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ticket.destroy_all
User.destroy_all
Gather.destroy_all
Venue.destroy_all

@user = User.create(username:"janis", email: "janis@g.com", password: "112233", fname: "Janis", lname: "Ran", addr1: "123 Hacky Ave", city: "Brooklyn", state: "NY", zip: "11220", level: "9", permission: "1")

@user2 = User.create(username:"kay", email: "kay@g.com", password: "112233", fname: "Kay", lname: "C", addr1: "456 Something Street", city: "New York", state: "NY", zip: "11222", level: "1", permission: "1")
p "#{User.count} users created"

@loc1 = Venue.create(name:"Barclays Center", addr1: "620 Atlantic Ave", city: "Brooklyn", state: "NY", zip: "11217")
@loc2 = Venue.create(name:"Citi Field", addr1: "41 Seaver Way", city: "Queens", state: "NY", zip: "11368")
p "#{Venue.count} venues created"

@g = Gather.create(event_start: "2020-10-01", event_end: "2020-10-01", host_name: "General Assembly", event_name:"Big Celebration", event_desc: "The Big Celebration for Everyone", venue: @loc1)
p "#{Gather.count} event created"

@t = Ticket.create(event_date: "2020-10-01", event_time: "10:00 am", fname: "Kay", lname: "Chan", purchase_date: "2020-07-21", purchase_price: "150", section: "AA", user: @user2, gather: @g)

@t2 = Ticket.create(event_date: "2020-10-01", event_time: "10:00 am", fname: "John", lname: "Smith", purchase_date: "2020-07-21", purchase_price: "150", section: "AA", user: @user2, gather: @g)

p "#{Ticket.count} ticket created"