# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Seeding..."

# Create heroes
heroes1 = Hero.create(name: "Superman", super_name: "Clark Kent")
heroes2 = Hero.create(name: "Batman", super_name: "Bruce Wayne")
heroes3 = Hero.create(name: "Spider-Man", super_name: "Peter Parker")
heroes4 = Hero.create(name: "Wonder Woman", super_name: "Diana Prince")
heroes5 = Hero.create(name: "Captain America", super_name: "Steve Rogers")

# Create powers
powers1 = Power.create(name: "Flight", description: "Ability to fly")
powers2 = Power.create(name: "Super strength", description: "Ability to lift very heavy objects")
powers3 = Power.create(name: "Web-slinging", description: "Ability to swing from building to building using webs")
powers4 = Power.create(name: "Invisibility", description: "Ability to become invisible")
powers5 = Power.create(name: "Regeneration", description: "Ability to heal rapidly from injuries")

# Assign powers to heroes
HeroPower.create(hero_id: heroes1.id, power_id: powers1.id, strength: "Strong")
HeroPower.create(hero_id: heroes2.id, power_id: powers2.id, strength: "Weak")
HeroPower.create(hero_id: heroes1.id, power_id: powers3.id, strength: "Strong")
HeroPower.create(hero_id: heroes3.id, power_id: powers1.id, strength: "Average")
HeroPower.create(hero_id: heroes4.id, power_id: powers3.id, strength: "Weak")

puts "Done seeding!"
