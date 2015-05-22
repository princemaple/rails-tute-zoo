# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bh = Location.create(name: 'Butterfly House', area_code: 'A1')
aq = Location.create(name: 'Aquarium', area_code: 'Z9')
sf = Location.create(name: 'Safari', area_code: 'C3')

cats = Species.create(name: 'cats')
birds = Species.create(name: 'birds')
insects = Species.create(name: 'insects')

Animal.create([
  { name: 'Bob', species: cats, location: sf, birthday: Time.now, description: 'big cat' },
  { name: 'Terence', species: birds, location: sf, birthday: Time.now, description: 'my colleague' },
  { name: 'Sadia', species: insects, location: bh, birthday: Time.now, description: 'pink butterfly' }
])
