# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'


users = []
for i in 0..50 do
    n = Faker::Name.name
    e = Faker::Internet.email
    a = Faker::Number.number(digits: 2)
    id = Faker::Number.number(digits: 3)

    b = [n, e, a, id]
    users[i] = b
end


posts = []
for i in 0..50 do
    uid = Faker::Number.number(digits: 3) #user id
    pid = Faker::Number.number(digits: 3) #post id
    rid = Faker::Number.number(digits: 3) #restaurant id
    rating = Faker::Number.number(digits: 1)
    likes = Faker::Number.number(digits: 3)

    b = [pid, uid, rid, rating, likes]
    posts[i] = b
end

#print posts

comments = []
for i in 0..50 do
    uid = Faker::Number.number(digits: 3)
    pid = Faker::Number.number(digits: 3)
    comment = Faker::Restaurant.review

    b = [pid, uid, comment]
    comments[i] = b
end

#print comments

restaurants = []
for i in 0..50 do
    rid = Faker::Number.number(digits: 3)
    name = Faker::Restaurant.name
    location = Faker::WorldCup.city
    lower_range = Faker::Number.number(digits: 2)
    upper_range = Faker::Number.number(digits: 3)

    b = [rid, name, location, lower_range, upper_range]
    restaurants[i] = b
end

print restaurants