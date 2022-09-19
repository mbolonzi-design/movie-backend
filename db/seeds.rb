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


Tv_Show.create(
  title: "The Office",
  year: 2005,
  plot: "A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.",
  rating: 5,
  review: "The Office is a hilarious mockumentary that follows the lives of the employees at Dunder Mifflin, a paper company in Scranton, Pennsylvania."
)


Tv_Show.create(
  title: "Friends",
  year: 1994,
  plot: "Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.",
  rating: 5,
  review: "Friends is an American sitcom created by David Crane and Marta Kauffman, which aired on NBC from September 22, 1994, to May 6, 2004, lasting ten seasons. With an ensemble cast starring Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry and David Schwimmer."
)

Tv_Show.create(
  title: "The Simpsons",
  year: 1989,
  plot: "The satiric adventures of a working-class family in the misfit city of Springfield.",
  rating: 5,
  review: "The Simpsons is an American animated sitcom created by Matt Groening for the Fox Broadcasting Company. The series is a satirical depiction of working-class life, epitomized by the Simpson family, which consists of Homer, Marge, Bart, Lisa, and Maggie."
)

Tv_Show.create(
  title: "The Big Bang Theory",
  year: 2007,
  plot: "The Big Bang Theory is an American television sitcom created by Chuck Lorre and Bill Prady, both of whom serve as executive producers on the series, along with Steven Molaro.",
  rating: 5,
  review: "It premiered on CBS on September 24, 2007. The show is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper."
)

Tv_Show.create(
  title: "The Mandalorian",
  year: 2019,
  plot: "The Mandalorian is an American space Western web television series created by Jon Favreau and produced by Lucasfilm. It is set in the Star Wars galaxy five years after the events of Return of the Jedi and follows the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic.",
  rating: 5,
  review: "The Mandalorian is an American space Western web television series created by Jon Favreau and produced by Lucasfilm."
)

Tv_Show.create(
  title: "The Witcher",
  year: 2019,
  plot: "Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts.",
  rating: 5,
  review: "The Witcher is an American fantasy drama streaming television series produced by Lauren Schmidt Hissrich. The series is set in a fictional fantasy world and follows the story of Geralt of Rivia, a monster hunter known as a witcher."
)

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
