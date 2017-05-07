# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bar.destroy_all
Food.destroy_all
Snack.destroy_all

@i=1

@section=['a', 'b', 'c', 'd', 'e']

5.times do
	@latitude=(10...1000).to_a.sample
	@longitude=(10...1000).to_a.sample
	@picture=['bibimbap.jpg', 'cocktail.jpg', 'sandwich.jpg'].sample

	Bar.create!(id: @i, title: Faker::Beer.name, content: Faker::Lorem.characters, 
		picture: @picture, latitude: @latitude, longitude: @longitude, description: Faker::Lorem.characters(10))
	
	Food.create!(id: @i, title: Faker::Food.ingredient, content: Faker::Lorem.characters,
	 picture: @picture, latitude: @latitude , longitude: @longitude, description: Faker::Lorem.characters(10))
	
	Snack.create!(id: @i, title: Faker::Food.ingredient, section: @section[@i-1], content: Faker::Lorem.characters,
	 picture: @picture, latitude: @latitude, longitude: @longitude, description: Faker::Lorem.characters(10))
	@i+=1
end