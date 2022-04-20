# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(name: "Dom Bosco", email: "dombosco@mail.com", password: "acesso")

user = User.find_by(email: "dombosco@mail.com")

Category.create(name: "Geral", user: user)
Category.create(name: "Moradia", user: user)
Category.create(name: "Transporte", user: user)
Category.create(name: "Alimentação", user: user)
Category.create(name: "Lazer", user: user)