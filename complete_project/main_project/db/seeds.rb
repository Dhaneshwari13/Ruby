# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Product.create(
  name: 'iPhone2',description: 'This is a sample description for iPhone.',
  price: 100000,
  stock: 3,
  is_active: true
)

Product.create!(
  name: Faker::Commerce.product_name,
  description: "kjbhkjdb",
  price: Faker::Commerce.price(range: 1000..50000),
  stock: rand(10..20),
  is_active: [true, false].sample
)


