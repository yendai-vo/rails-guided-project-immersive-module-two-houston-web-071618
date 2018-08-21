# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
DishType.destroy_all
Cuisine.destroy_all
Recipe.destroy_all
Comment.destroy_all


ron = User.create(username: 'Duke Silver', location: 'Indiana', img_url:'https://vignette.wikia.nocookie.net/parksandrecreation/images/5/5c/Ron.jpg/revision/latest?cb=20110809180635')

leslie = User.create(username: 'Leslie', location: 'Indiana', img_url: 'https://vignette.wikia.nocookie.net/parksandrecreation/images/3/38/Leslie.png/revision/latest?cb=20111015205925')

ann = User.create(username: 'Ann', location: 'Michigan', img_url: 'https://vignette.wikia.nocookie.net/parksandrecreation/images/3/33/Ann_Perkins.jpg/revision/latest/scale-to-width-down/350?cb=20180116070354')

ben = User.create(username: 'Ice Town', location: 'Minnesota', img_url:'https://vignette.wikia.nocookie.net/parksandrecreation/images/0/0a/Ben.jpg/revision/latest?cb=20110809181418')

chris = User.create(username: 'The Bionic Man', location: 'Minnesota', img_url: 'https://vignette.wikia.nocookie.net/parksandrecreation/images/a/a0/ChrisTraeger.jpg/revision/latest?cb=20110809181529')

tom = User.create(username: 'Tommy Boy', location: 'South Carolina', img_url:'https://vignette.wikia.nocookie.net/parksandrecreation/images/9/9c/Tom.jpg/revision/latest?cb=20110809180711')

april = User.create(username: 'Janey Snakehole', location: 'Indiana', img_url:'https://vignette.wikia.nocookie.net/parksandrecreation/images/e/ed/April-0.png/revision/latest?cb=20180116070637')

andy = User.create(username: 'Johnny Karate', location: 'South Carolina',img_url:'https://vignette.wikia.nocookie.net/parksandrecreation/images/d/d1/Andy-0.jpg/revision/latest?cb=20180116071113')

apps = DishType.create(name: 'Appetizers')
soups = DishType.create(name: 'Soups')
salads = DishType.create(name: 'Salads')
sides = DishType.create(name: 'Sides')
entrees = DishType.create(name: 'Entrees')
desserts = DishType.create(name: 'Desserts')

Cuisine.create(name: 'Japanese')
Cuisine.create(name: 'Indian')
Cuisine.create(name: 'Italian')
Cuisine.create(name: 'Mexican')
Cuisine.create(name: 'Southern')
Cuisine.create(name: 'Greek')
Cuisine.create(name: 'Thai')
Cuisine.create(name: 'French')
Cuisine.create(name: 'Spanish')
Cuisine.create(name: 'American')
Cuisine.create(name: 'Swedish')
Cuisine.create(name: 'British')

Recipe.create(img_url: 'https://s23209.pcdn.co/wp-content/uploads/2012/07/IMG_4101-1.jpg', title: 'Pesto Pasta with Sundried Tomatoes and Asparagus', cook_time:'25 minutes', instruction: 'Cook pasta in salted water. Sautee asparagus with sundried tomatoes. Take off heat. Add cooked pasta. Stir in pesto. Enjoy!', user_id: 7, cuisine_id: 3, dish_type_id: 5)

Recipe.create(img_url: 'https://www.pickledplum.com/wp-content/uploads/2014/07/nasu-dengakuWEB.jpg', title: 'Miso Glazed Eggplant', cook_time:'15 minutes', instruction: 'Cut eggplant in half and score the insides. Cook eggplant with oil, skin face down. Once skin is browned, combine miso and mirin and spread mixture over eggplant. Put in oven and broil for 4 minutes. Sprinkle with sesame seeds. Enjoy!', user_id: 8, cuisine_id: 1, dish_type_id: 4)

Recipe.create(img_url: 'https://www.eatwell101.com/wp-content/uploads/2017/05/chocolate-covered-pineapple-pops.jpg', title: 'Pineapple Coco-choco Pops', cook_time:'5 minutes', instruction: 'Cut pineapple into bite size pieces. Dip halfway in melted chocolate. Sprinkle with roasted coconut flakes. Enjoy!', user_id: 5, cuisine_id: 4, dish_type_id: 6)

Recipe.create(img_url: 'https://i.pinimg.com/564x/ef/aa/77/efaa77d8bbcd170be387d5f092c265a5.jpg', title: 'Mexican Shrimp and Avocado Bites', cook_time:'10  minutes', instruction: 'Sautee seasoned shrimp. Assemble, starting with a chip or bread, spread on avocado, place one shrimp on top. Garnish with cilantro. Enjoy!', user_id: 2, cuisine_id: 4, dish_type_id: 1)

Recipe.create(img_url: 'https://res.cloudinary.com/hksqkdlah/image/upload/s--tW4YQY4h--/c_scale,f_auto,h_688,q_jpegmini:2,w_688/37243_sfs-fish-and-chips-35', title: 'Fish and Chips', cook_time:'30 minutes', instruction: 'Fry the fish. Fry the potatoes. Done.', user_id: 2, cuisine_id: 12, dish_type_id: 5)

Recipe.create(img_url: 'https://hips.hearstapps.com/del.h-cdn.co/assets/18/08/1519155106-flank-steak-horizontal.jpg', title: 'Steak', cook_time:'20 minutes', instruction: 'Cook in oven for 10 minutes. Reverse sear with garlic, thyme, and butter. Rest for 5 minutes. Medium Rare or get out!', user_id: 1, cuisine_id: 10, dish_type_id: 5)

Recipe.create(img_url: 'https://www.cleaneatingkitchen.com/wp-content/uploads/2015/11/Healthy-Cream-of-Tomato-Soup.jpg', title: 'Tomato Soup', cook_time:'40 minutes', instruction: 'Cut tomatoes nad mix with seasonings. Cook for a long a** time. Blend it into liquid. Serve.', user_id: 6, cuisine_id: 3, dish_type_id: 2)

Recipe.create(img_url: 'https://www.jessicagavin.com/wp-content/uploads/2016/07/crunchy-thai-salad-with-peanut-sauce-dressing-eating-with-chopsticks-1200.jpg', title: 'Peanut Thai Salad', cook_time:'10 minutes', instruction: 'Chop everything! Then mix everything. Drizzle with peanut dressing. Done.', user_id: 3, cuisine_id: 7, dish_type_id: 3)

Recipe.create(img_url: 'https://www.petrossian.com/pub/media/catalog/product/cache/1/image/560x560/e9c3970ab036de70892d86c6d221abfe/f/r/french_macarons.png', title: 'French Macarons', cook_time:'3 hours', instruction: 'Sift almond flour with powder sugar. Whip eggs into meringue. Fold wet into dry, DO NOT OVERMIX! Pipe out and rest dry for 30 minutes. Bake in oven at 400 degrees for 18 minutes. Cool completely before piping in filling. So laborous...but delicious!', user_id: 7, cuisine_id: 8, dish_type_id: 6)

Comment.create(title: 'Awesome Recipe', description: 'Love this! I made this for my family and everyone wanted seconds!', user_id: 2, recipe_id: 4)
Comment.create(title: 'Yum', description: "I've been making this for years, but this is a great twist. I will make this again.", user_id: 5, recipe_id: 3)
Comment.create(title: 'Okay', description: "This was too salty for me. Next time I'll make sure and cut it down to one fourth of the salt. Other than that it was okay.", user_id: 8, recipe_id: 2)
Comment.create(title: 'Too Sour', description: 'Loved the sauce, but it was a bit too sour for our liking. Maybe less lemon?', user_id: 3, recipe_id: 8)
Comment.create(title: 'Too Much Sugar', description: "This had too much sugar. My husband is diabetic. I'll try Stevia next time.", user_id: 7, recipe_id: 9)
Comment.create(title: 'Do Not Recommend', description: "Do not recommend at all.", user_id: 6, recipe_id: 7)
Comment.create(title: 'More Please!', description: 'This was delicious!! Going into my regular weekly recipe rotation!', user_id: 1, recipe_id: 6)
Comment.create(title: 'Too Dry', description: 'I think the cooking time is too long. The meat was too dry. I think lowering the temperature or less cooking time would make this better.', user_id: 7, recipe_id: 1)

