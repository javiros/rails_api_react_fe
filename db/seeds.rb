# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

messages = Api::V1::Message.create([{ email: 'john.doe@mail.com', first_name: 'John', last_name: 'Doe', amount: 1675 } ,{ email: 'martin.oneil@gmail.com', first_name: 'Martin', last_name: 'O\'Neil', amount: 745 } ,{ email: 'paul.finnan@mail.com', first_name: 'Paul', last_name: 'Finnan', amount: 532 }, { email: 'jay.ross@yahoo.com', first_name: 'Jay', last_name: 'Ross', amount: 720 }, { email: 'david.wallace34@mail.com', first_name: 'David', last_name: 'Wallace', amount: 14 }])
