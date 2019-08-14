# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


category_1 = Category.create(name:"Fun")
category_2 = Category.create(name:"Not fun")
category_3 = Category.create(name:"Funny")

user_1 = User.create(username:"Jimmy32", email: "Jimmy@jim.com")
user_2 = User.create(username:"Alicee", email: "Alice@alice.com")
user_3 = User.create(username:"Amy", email: "Amy44@amy.com")

post_1 = Post.create(title: "This is a post", content: "This is some content")
post_2 = Post.create(title: "This is a second post", content: "This is some content")
post_3 = Post.create(title: "This is a third post", content: "This is some content")
post_4 = Post.create(title: "This is a fourth post", content: "This is some content")


