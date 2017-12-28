# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "lindsay_d", fullname: "Lindsay Davis", birthdate: 12/15/1984, email: "lindsay.davis@flatironschool.com")


user2 = User.create(username: "leslie_d", fullname: "Leslie Davis", birthdate: 12/15/1984, email: "lesd@flatironschool.com")

friendship1 = Friendship.create(user_id: 1, friend_id: 2)


destination1 = Destination.create(city: "New York", country: "United States", tagline: "city that never sleeps", summary: "fast paced, crowded, urban adventure full of the unusual")

category1 = Category.create(name: "urban")
category2 = Category.create(name: "high energy")
category3 = Category.create(name: "family-friendly")
category4 = Category.create(name: "adult-focused")

place1 = Place.create(place_type: "hotel", name: "Gramercy Park Hotel", sublocation: "Gramercy Park", summary: "Highend, quirky hotel, plush rooms but intense sceen", destination: destination1)

trip1 = Trip.create(title: "NYC staycation", comment: "City that eats and drinks", rating: 4, start_date: 12/12/2014, end_date: 12/14/2014, taken: true, user: user1, destination: destination1)

review1 = Review.create(title: "Beautiful but overpriced", content: "Loved the room, amazing hotel and stadd but stuffy atmosphere", rating: 3, user: user1, place: place1)
