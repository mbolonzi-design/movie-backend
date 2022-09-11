puts "🌱 Seeding spices..."

# Seed your database here
20.times do
  movie_list = Movie.create(
    title: Faker::Movie.title,
    year: Faker::Number.between(from: 1900, to: 2020),
    plot: Faker::Movie.quote,
    rating: Faker::Number.between(from: 1, to: 5)
)
end

15.times do
  user_list = User.create(
    username: Faker::Internet.username,
    password_digest: Faker::Internet.password
)
end

15.times do
  review_list = Review.create(
    title: Faker::Movie.quote,
    content: Faker::Lorem.paragraph,
    rating: Faker::Number.between(from: 1, to: 5),
    movie_id: Faker::Number.between(from: 1, to: 20),
    user_id: Faker::Number.between(from: 1, to: 10)
)
end

puts "✅ Done seeding!"
