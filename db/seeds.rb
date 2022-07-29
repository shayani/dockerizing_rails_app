# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Contact.new.tap do |contact|
    contact.name = Faker::Name.name
    contact.age = rand(20..60)
    contact.phone = Faker::PhoneNumber.phone_number
    contact.address = Faker::Address.street_address
    contact.save
  end
end
