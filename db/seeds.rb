require 'faker'
puts "🌱 Seeding spices..."

20.times do
  movie_list = Movie.create(
    title: Faker::Movie.title,
    year: Faker::Number.between(from: 1900, to: 2020),
    plot: Faker::Movie.quote,
    rating: Faker::Number.between(from: 1, to: 5),
    review: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4)
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

10.times do
  shows = Tv_Show.create(
    title: Faker::TvShows::GameOfThrones.character,
    year: Faker::Number.between(from: 1900, to: 2020),
    plot: Faker::TvShows::GameOfThrones.quote,
    rating: Faker::Number.between(from: 1, to: 5),
    review: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4)
)
end

10.times do
  episode = Episode.create(
    title: Faker::TvShows::GameOfThrones.character,
    image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['tv show']),
    year: Faker::Number.between(from: 1900, to: 2020),
    plot: Faker::TvShows::GameOfThrones.quote,
    rating: Faker::Number.between(from: 1, to: 5),
    tv_show_id: Faker::Number.between(from: 1, to: 10)
  )
end

10.times do
  character = Character.create(
    name: Faker::TvShows::GameOfThrones.character,
    image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['character']),
    age: Faker::Number.between(from: 1, to: 100),
    bio: Faker::TvShows::GameOfThrones.quote,
    tv_show_id: Faker::Number.between(from: 1, to: 10)
  )
end


puts "✅ Done seeding!"
