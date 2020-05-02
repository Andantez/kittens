# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Destroying all kittens'

Kitten.destroy_all
cuteness = ['very cute', 'over 9000', 'not really', 'super cute']
softness = ['really soft', 'not so much']
age = (1..10).to_a.sample
10.times do
  Kitten.create!(name: Faker::Creature::Cat.name, age: age,
                 cuteness: cuteness.sample, softness: softness.sample)
end
