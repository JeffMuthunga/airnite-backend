puts "🌱 Seeding data..."



20.times do
    images = ["https://images.pexels.com/photos/2980955/pexels-photo-2980955.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=699.825&fit=crop&h=1133.05",
"https://images.pexels.com/photos/463996/pexels-photo-463996.jpeg?auto=compress&cs=tinysrgb&w=1600",
"https://cf.bstatic.com/xdata/images/hotel/max1280x900/186576516.jpg?k=b31efb6b486fbd01e812ba18d33f62b4f7fa68bce04ada60143aa6460c257718&o=&hp=1",
"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/d9/bf/a5/biggest-bedroom-48-square.jpg?w=1200&h=-1&s=1",
"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/8e/34/3f/kole-kole.jpg?w=1200&h=-1&s=1",
"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/b8/4a/4a/southern-palms-beach.jpg?w=1200&h=-1&s=1",
"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/09/ad/27/severin-sea-lodge.jpg?w=1100&h=-1&s=1",
"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/09/ad/27/severin-sea-lodge.jpg?w=1100&h=-1&s=1",
"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/ef/9b/83/palacina-residence-suites.jpg?w=1200&h=-1&s=1",
"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/37/52/56/suite.jpg?w=1200&h=-1&s=1",
"https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1600",
"https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1600"

]
    property=Property.create(
        title: Faker::Company.name + "Hotel",
        bedrooms: rand(2..9),
        sqrfeet: rand(1000..6000),
        city: Faker::Address.city,
        price: rand(2500..30000),
        description: Faker::Lorem.sentence,
        image: images.sample
    )
   


   

    rand(1..6).times do
    Review.create(
        star_rating: rand(1..5),
        comment: Faker::Lorem.sentence,
        property_id: property.id,
        user_id: rand(1..20)
    )

    end

end

20.times do
    user = User.create(
        name: Faker::Name.name
    )
end

puts "🌱 Seeding complete"






