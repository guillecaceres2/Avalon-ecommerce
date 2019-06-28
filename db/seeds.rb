# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

12.times do |i|
  Product.create(
    name: Faker::Commerce.product_name,
    description: Faker::Commerce.material,
    price: Faker::Commerce.price.to_i,
    image: "https://picsum.photos/id/#{i + 7}/200/300/"
  )
end
