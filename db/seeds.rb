# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "lindsay_d", fullname: "Lindsay Davis", birthdate: 12/15/1984, email: "lindsay.davis@flatironschool.com")


user2 = User.create(username: "leslie_d", fullname: "Leslie Davis", birthdate: 12/15/1984, email: "lesd@flatironschool.com")

user3 = User.create(username: "michelle_b", fullname: "Michelle Burton", birthdate: 11/29/1989, email: "michelle123@gmail.com")

user4 = User.create(username: "pammy_d", fullname: "Pam Davis", birthdate: 01/22/1955, email: "pammy@xyz.com")

friendship1 = Friendship.create(user_id: 1, friend_id: 2)
friendship2 = Friendship.create(user_id: 1, friend_id: 3)
friendship3 = Friendship.create(user_id: 2, friend_id: 4)

destination1 = Destination.create(city: "New York", country: "United States", tagline: "City that never sleeps", summary: "fast paced, crowded, urban adventure full of the unusual")

destination2 = Destination.create(city: "Istanbul", country: "Turkey", tagline: "Center of the world", summary: "History, views, food, welcoming")

destination3 = Destination.create(city: "London", country: "England", tagline: "Many things in every moment", summary: "A big city that offers everything - history, culture, nightlife, attractions")

destination4 = Destination.create(city: "Oranjestad", country: "Arbua", tagline: "Beautiful beaches, welcoming people, not over-developed", summary: "An affordable way to enjoy a beach vacation in the Caribbean")

destination5 = Destination.create(city: "Siem Reap", country: "Cambodia", tagline: "Angkor Wat and a vibrant city", summary: "The city closest to Angkor Wat, bustling, tourist-friendly, developing")

destination6 = Destination.create(city: "Chicago", country: "United States", tagline: "A big city with a neighborhood feeling", summary: "Known for architecture and museums, a thriving music and dining scene, and sports")


category1 = Category.create(name: "urban")
category2 = Category.create(name: "high energy")
category3 = Category.create(name: "family-friendly")
category4 = Category.create(name: "adult-focused")
category5 = Category.create(name: "adventure")
category6 = Category.create(name: "rural")
category7 = Category.create(name: "tropical")
category8 = Category.create(name: "relaxing")
category9 = Category.create(name: "romantic")
category10 = Category.create(name: "shopping")

cat_dest1 = CategoriesDestination.create(destination_id: 1, category_id: 1)
cat_dest2 = CategoriesDestination.create(destination_id: 1, category_id: 2)
cat_dest3 = CategoriesDestination.create(destination_id: 1, category_id: 10)
cat_dest4 = CategoriesDestination.create(destination_id: 4, category_id: 7)
cat_dest5 = CategoriesDestination.create(destination_id: 4, category_id: 8)
cat_dest6 = CategoriesDestination.create(destination_id: 3, category_id: 10)
cat_dest5 = CategoriesDestination.create(destination_id: 3, category_id: 2)
cat_dest5 = CategoriesDestination.create(destination_id: 6, category_id: 4)
cat_dest5 = CategoriesDestination.create(destination_id: 5, category_id: 5)
cat_dest5 = CategoriesDestination.create(destination_id: 5, category_id: 7)
cat_dest5 = CategoriesDestination.create(destination_id: 5, category_id: 4)
cat_dest5 = CategoriesDestination.create(destination_id: 5, category_id: 6)


place1 = Place.create(place_type: "hotel", name: "Gramercy Park Hotel", sublocation: "Gramercy Park", summary: "Highend, quirky hotel, plush rooms but intense sceen", destination: destination1)

place2 = Place.create(place_type: "restaurant", name: "Shake Shack", sublocation: "Flatiron", summary: "the original in Madison Square Park", destination: destination1)

place3 = Place.create(place_type: "attraction", name: "Statue of Liberty", sublocation: "Battery Park", summary: "Iconic National Monument", destination: destination1)

place4 = Place.create(place_type: "attraction", name: "London Eye", sublocation: "South bank", summary: "a great way to see all of London from one spot", destination: destination3)

trip1 = Trip.create(title: "NYC staycation", comment: "City that eats and drinks", rating: 4, start_date: 12/12/2014, end_date: 12/14/2014, taken: true, user: user1, destination: destination1)

review1 = Review.create(title: "Beautiful but overpriced", content: "Loved the room, amazing hotel and stadd but stuffy atmosphere", rating: 3, user: user1, place: place1)

review2 = Review.create(title: "The original not to be missed", content: "Best chicken sandwich!!!  And shakes!!!", rating: 5, user: user2, place: place2)

review3 = Review.create(title: "Connected to History", content: "Can be crowded but great museum and tour", rating: 4, user: user3, place: place3)

review4 = Review.create(title: "Don't Waste your time", content: "Was too expensive and rest of the groupw as rude", rating: 1, user: user4, place: place4)
