# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Animal.create(common_name: "African Forest Elephant", latin_name: "Loxodonta cyclotis", kingdom: "Animalia")
Animal.create(common_name: "Black Rhinoceros", latin_name: "Diceros Bicornis", kingdom: "Animalia")
Animal.create(common_name: "Desert Tortoise", latin_name: "Gopherus Agassizii", kingdom: "Animalia")
Animal.create(common_name: "Cuttlefish", latin_name: "Sepiida", kingdom: "Animalia")
Animal.create(common_name: "Fennec Fox", latin_name: "Vulpes zerda", kingdom: "Animalia")
Animal.create(common_name: "Hammerhead Shark", latin_name: "Sphyrna Zygaena", kingdom: "Animalia")
Animal.create(common_name: "Long-Eared Owl", latin_name: "Casuarius", kingdom: "Animalia")
Animal.create(common_name: "Pademelon", latin_name: "Thylogale", kingdom: "Animalia")
Animal.create(common_name: "Pink Fairy Armadillo", latin_name: "Chlamyphorus", kingdom: "Animalia")
Animal.create(common_name: "Sun Bear", latin_name: "Helarctos malayanus", kingdom: "Animalia")

Sighting.create(animal_id: 1, date: "2019-07-12 08:24:56", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 2, date: "2019-05-26 08:34:35", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 3, date: "2019-05-26 09:26:35", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 4, date: "2019-05-26 11:29:35", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 5, date: "2019-05-26 17:24:09", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 6, date: "2019-08-26 13:24:35", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 7, date: "2019-02-23 18:12:43", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 8, date: "2019-12-26 13:24:55", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 9, date: "2019-04-26 05:24:45", latitude: 45.523064,
longitude: -122.676483)
Sighting.create(animal_id: 10, date: "2019-09-24 01:24:12", latitude: 45.523064,
longitude: -122.676483)
