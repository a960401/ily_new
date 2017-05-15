# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Bar.destroy_all
# Food.destroy_all
# Snack.destroy_all

# @i=1

# @section=['a', 'b', 'c', 'd', 'e']

# 5.times do
# 	@latitude=(10...1000).to_a.sample
# 	@longitude=(10...1000).to_a.sample
# 	@picture=['bibimbap.jpg', 'cocktail.jpg', 'sandwich.jpg'].sample

# 	Bar.create!(id: @i, title: Faker::Beer.name, content: Faker::Lorem.characters, 
# 		picture: @picture, latitude: @latitude, longitude: @longitude, description: Faker::Lorem.characters(10))
	
# 	Food.create!(id: @i, title: Faker::Food.ingredient, content: Faker::Lorem.characters,
# 	 picture: @picture, latitude: @latitude , longitude: @longitude, description: Faker::Lorem.characters(10))
	
# 	Snack.create!(id: @i, title: Faker::Food.ingredient, section: @section[@i-1], content: Faker::Lorem.characters,
# 	 picture: @picture, latitude: @latitude, longitude: @longitude, description: Faker::Lorem.characters(10))
# 	@i+=1
# end

require 'csv'
Bar.destroy_all
Food.destroy_all
Snack.destroy_all

csv_text=File.read(Rails.root.join('lib', 'seeds', 'bar_seed2.csv'))
csv=CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
    bar=Bar.new
    bar.id=row['id']
    bar.title=row['title']
    bar.content=row['content']
    bar.description=row['description']
    bar.mapurl=row['mapurl']
    bar.latitude=row['latitude']
    bar.longitude=row['longitude']
    bar.imageurl=row['imageurl']
    bar.picture=row['picture']
    bar.save
end

snack_text=File.read(Rails.root.join('lib', 'seeds', 'snack_seed.csv'))
snack=CSV.parse(snack_text, :headers => true, :encoding => 'UTF-8')
snack.each do |row|
    snack=Snack.new
    snack.id=row['id']
    snack.title=row['title']
    snack.content=row['content']
    snack.latitude=row['latitude']
    snack.longitude=row['longitude']
    snack.imageurl=row['imageurl']
    snack.description=row['description']
    snack.save
end

food_text=File.read(Rails.root.join('lib', 'seeds', 'food_seed.csv'))
foods=CSV.parse(food_text, :headers => true, :encoding => 'UTF-8')
foods.each do |row|
    food=Food.new
    food.id=row['id']
    food.title=row['title']
    food.content=row['content']
    food.latitude=row['latitude']
    food.longitude=row['longitude']
    food.imageurl=row['imageurl']
    food.description=row['description']
    food.save
end