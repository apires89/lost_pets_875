# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

### to generate fake data to test our website

#clean DB
Pet.destroy_all
puts "cleaning up the DB"

#seed the database
species = %w(dog cat mouse lion)
10.times do
  pet = Pet.create(name: Faker::GreekPhilosophers.name, species: species.sample, date_found: Date.today - rand(1..6), location: Faker::Address.city )
  puts pet.name
end
