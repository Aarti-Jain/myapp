# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'


for i in 0..50 do
    user_name = Faker::Name.name
    user_age = Faker::Number.number(digits: 2)
    user_email = Faker::Internet.email 
    User.new(name:user_name, age:user_age, email:user_email).save
end

for i in 0..50 do
    restaurant_name = Faker::Restaurant.name
    restaurant_location = Faker::WorldCup.city
    restaurant_price_range =Faker::Number.number(digits: 2)
    Restaurant.new(name:restaurant_name,location:restaurant_location,price_range:restaurant_price_range).save
end

for i in 0..50 do
    post_user_id = User.all.sample(1)[0].id
    post_restaurant_id = Restaurant.all.sample(1)[0].id
    post_rating = Faker::Number.number(digits: 1)
    post_likes_count = Faker::Number.number(digits: 3)
    Post.new(user_id:post_user_id, restaurant_id:post_restaurant_id, 
                   rating:post_rating, likes_count:post_likes_count).save
end

for i in 0..50 do
    comment_post_id = Post.all.sample(1)[0].id
    comment_user_id = User.all.sample(1)[0].id
    comment_content = Faker::Restaurant.name
    Comment.new(post_id:comment_post_id,user_id:comment_user_id,content:comment_content).save
end