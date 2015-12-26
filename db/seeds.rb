5.times do
  RegisteredApplication.create!(
    name: Faker::Name.name,
    url: Faker::Internet.url
  )
end
registered_applications = RegisteredApplication.all

5.times do
  Event.create!(
    name: Faker::Lorem.sentence,
  )
end

puts "Seed finished"
puts "#{RegisteredApplication.count} registered applications created"
puts "#{Event.count} events created"
