# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Agency.create!([
  {
    email: 'Agency1@email.com',
    password: 'password',
    name: 'Agency 1',
    address: '123 Main Street',
    city: 'Atlanta',
    state: 'GA',
    zip_code: 30318,
    phone: '(404) 555-1234',
    contact: 'Tony Stark'
  },
  {
    email: 'Agency2@email.com',
    password: 'password',
    name: 'Agency 2',
    address: '8000 Peachtree Road',
    city: 'Atlanta',
    state: 'GA',
    zip_code: 30092,
    phone: '(770) 555-4646',
    contact: 'Betty Jo'
  }
])

agency = Agency.find_by(name: 'Test Agency')
agency.overflows.create!(item_type: 'Food', perishable: false, quantity: '45 cans', description: '45 cans of green beans', expiration: nil, created_at: '2014-05-31')
agency.overflows.create!(item_type: 'Clothing', perishable: false, quantity: '10 shirts', description: '10 men\'s shirts', expiration: nil, created_at: '2014-05-30')

agency = Agency.find_by(name: 'Test Agency 2')
agency.overflows.create!(item_type: 'Food', perishable: true, quantity: '2 pallets', description: '2 pallets of carrots', expiration: '2014-06-01', created_at: '2014-05-29')
agency.overflows.create!(item_type: 'Clothing', perishable: false, quantity: '10 shirts', description: '10 men\'s shirts', expiration: nil, created_at: '2014-05-31')