# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create 10 heroes with random names
10.times do
  Hero.create(name: Faker::Name.unique.name, super_name: Faker::Name.unique.name)
end

# Create 10 powers with random names
10.times do
  Power.create(name: Faker::Superhero.unique.power, description: Faker::Lorem.paragraph  )
end

# Assign 3 random powers to each hero
Hero.all.each do |hero|
  powers = Power.all.sample(3)
  powers.each do |power|
    hero.hero_powers.create(strength: "average", power: power)
  end
end