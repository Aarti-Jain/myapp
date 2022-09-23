## Brief summary
Our product is a social networking website that allows users to rate, review and share restaurants with their friends. Users can create profiles and update their pictures, bio, and a list of their favorite restaurants. Users can then add friends and see the restaurants their friends have reviewed. Otherwise, they could check out the feed which is based on a recommendation system that will suggest possible restaurants of interest to users, based on the restaurants their friends like!
## Link to your Trello 
https://trello.com/w/cosi166bteam7/home
## Preliminary idea of what each teammate is interested in working on
Brian: Frontend
Aarti: Backend
Zixin: Frontend
Mahmoud: Backend
## Explanation of the schema so far.
### `Entities`:
Users (user_id, name, bio, age, email, password)
Post (user_id, restaurant_id, content, rating, picture, likes_count)
Post_comments (post_id, user_id, comment)
Restaurants (restaurant_id, name, location, price_range)
User_followers (user_id, fan) # fan this will be a User_id
User_followings (user_id, star) # this will be a User_id

### `Relationships`:
Users — one to many → Post
Post — one to many → Post_comments
Users — one to many → User_ratings
Users — one to many →  user_followers
Users — one to many → user_followings 


### Aarti's comment (Recitation 9/23/22)

