5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8, 10),
    username: Faker::Lorem.word
  )
  user.skip_confirmation!
  user.save!
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
    registered_application: registered_applications.sample,
    name: Faker::Lorem.sentence
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} registered applications created"
puts "#{Event.count} events created"
