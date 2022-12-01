# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
heros = []

8.times do
   heros << Hero.create(name: Faker::Name.name, super_name: Faker::Superhero.name)
end

powers = []
3.times do
    powers << Power.create(name:Faker::Superhero.power, description: Faker::Lorem.paragraph_by_chars(number: rand(20..45), supplemental: false))
end

8.times do
   HeroPower.create(strength: ["Strong", "Weak", "Average"].sample, hero_id: heros.sample.id, power_id:powers.sample.id)
end