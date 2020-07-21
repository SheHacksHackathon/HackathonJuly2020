# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Venue.destroy_all
Gather.destroy_all

@user = User.create(username:"janis", email: "janis@g.com", password: "112233")
@user2 = User.create(username:"kay", email: "kay@g.com", password: "112233")
p "#{User.count} users created"

@loc = Venue.create(name:"Barclays Center", addr1: "620 Atlantic Ave", city: "Brooklyn", state: "NY", zip: "11217")
@loc2 = Venue.create(name:"Citi Field", addr1: "41 Seaver Way", city: "Queens", state: "NY", zip: "11368")

p "#{Venue.count} venues created"

# @e = Gather.create (event_start: '2020-10-1', event_end: '2020-10-1', host_name: 'General Assembly', event_name: 'Big Celebration', event_desc: 'The Big Celeration detail descriptions...', venue:@loc)
# p "#{Gather.count} evenet created")