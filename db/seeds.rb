require 'faker'

5.times do
  user = User.create!(
      email:    Faker::Internet.email,
      password: 'password'
    )

  5.times do
    user.items.create!(
      name: Faker::Lorem.word
      )
  end
end

user = User.all

puts "Seed finished"
puts "#{User.count} users created"
