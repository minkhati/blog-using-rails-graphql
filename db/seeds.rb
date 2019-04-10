# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = [
		{
			title: 'First Post',
			content: 'First Post Content'	
		},
		{
			title: 'Second Post',
			content: 'Second Post Content'	
		},
		{
			title: 'Third Post',
			content: 'Third Post Content'	
		},
		{
			title: 'Fourth Post',
			content: 'Fourth Post Content'	
		},
		{
			title: 'Fifth Post',
			content: 'Fifth Post Content'	
		},
]

posts.each do |post|
	Post.create(post)
end