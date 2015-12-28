5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8, 10)
  )
end
users = User.all

5.times do
  RegisteredApplication.create!(
    user: users.sample,
    name: Faker::Name.name,
    url: Faker::Internet.url
  )
end
registered_applications = RegisteredApplication.all

5.times do
  Event.create!(
    registered_application: registered_applications.sample
    name: Faker::Lorem.sentence,
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} registered applications created"
puts "#{Event.count} events created"
