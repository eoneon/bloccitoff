require 'random_data'

5.times do
  User.create!(
    email:    RandomData.random_email,
    password: RandomData.random_sentence
    )
end
users = User.all

puts "Seed finished"
puts "#{User.count} users created"
