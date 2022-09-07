# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = Person.create(name: "john",age: 36)
ceasar= john.dogs.create(name:"ceasar",age:3)
buddy= john.dogs.create(name:"buddy",age:5)
tommy= john.dogs.create(name:"tommy",age:2)