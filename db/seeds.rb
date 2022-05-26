puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Database cleaned.'

puts 'Creating restaurants...'

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

20.times do
  restaurant = Restaurant.new({
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: CATEGORIES.sample
  })

  restaurant.save!
  puts "Created #{restaurant.name}"
end

puts "Seeding completed!"
