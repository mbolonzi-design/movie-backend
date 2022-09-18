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
  review: "The Office is a hilarious mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium. Based on the hit BBC series of the same name, The Office is an American adaptation of Ricky Gervais and Stephen Merchant's original series."
)

Tv_Show.create(
  title: "The Simpsons",
  year: 1989,
  plot: "The satiric adventures of a working-class family in the misfit city of Springfield.",
  rating: 5,
  review: "The Simpsons is an animated sitcom about the antics of a dysfunctional family called the Simpsons. Set in Springfield, the average American town, the show focuses on the antics and everyday adventures of the Simpson family; Homer, Marge, Bart, Lisa and Maggie, as well as a virtual cast of thousands. Since the beginning, the series has been a pop culture icon, attracting hundreds of celebrities to guest star. The show has also made name for itself in its fearless satirical take on politics, media and American life in general."
)

Tv_Show.create(
  title: "Friends",
  year: 1994,
  plot: "Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.",
  rating: 5,
  review: "Friends is an American sitcom created by David Crane and Marta Kauffman, which aired on NBC from September 22, 1994, to May 6, 2004, lasting ten seasons. With an ensemble cast starring Jennifer Aniston, Courteney Cox, Lisa Kudrow, Matt LeBlanc, Matthew Perry and David Schwimmer, the show revolved around six friends in their 20s and 30s who lived in Manhattan, New York City. The series was produced by Bright/Kauffman/Crane Productions, in association with Warner Bros. Television. The original executive producers were Kevin S. Bright, Kauffman, and Crane. The series was created by Crane and Kauffman, who also served as its principal writers, while Bright was the supervising producer. The series was directed by James Burrows, Gary Halvorson, and Pamela Fryman. The pilot episode was filmed in 1994, and the series premiered on NBC on September 22, 1994. Friends was produced by Bright/Kauffman/Crane Productions, in association with Warner Bros. Television. The original executive producers were Kevin S. Bright, Kauffman, and Crane. The series was created by Crane and Kauffman, who also served as its principal writers, while Bright was the supervising producer. The series was directed by James Burrows, Gary Halvorson, and Pamela Fryman. The pilot episode was filmed in 1994, and the series premiered on NBC on September 22, 1994."
)

Tv_Show.create(
  title: "The Big Bang Theory",
  year: 2007,
  plot: "The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon's equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny's social skills and common sense.",
  rating: 5,
  review: "The Big Bang Theory is centered on five characters living in Pasadena, California: roommates Leonard Hofstadter and Sheldon Cooper; Penny, a waitress and aspiring actress who lives across the hall; and Leonard and Sheldon's equally geeky and socially awkward friends and co-workers, mechanical engineer Howard Wolowitz and astrophysicist Raj Koothrappali. The geekiness and intellect of the four guys is contrasted for comic effect with Penny's social skills and common sense."
)

Tv_Show.create(
  title: "The Walking Dead",
  year: 2010,
  plot: "Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.",
  rating: 5,
  review: "The Walking Dead is an American post-apocalyptic horror television series for AMC based on the comic book series of the same name by Robert Kirkman, Tony Moore, and Charlie Adlard. The series features a large ensemble cast as survivors of a zombie apocalypse, trying to stay alive under near-constant threat of attacks from the mindless zombies, colloquially known as 'walkers'. The series premiered on October 31, 2010, following the 2010 feature film of the same name. The series was developed for television by Frank Darabont, who wrote or co-wrote 61 of the 91 episodes of the series. He served as showrunner for the first season, but was replaced by Glen Mazzara in season two. The series is filmed in Atlanta, Georgia. The Walking Dead is an American post-apocalyptic horror television series for AMC based on the comic book series of the same name by Robert Kirkman, Tony Moore, and Charlie Adlard. The series features a large ensemble cast as survivors of a zombie apocalypse, trying to stay alive under near-constant threat of attacks from the mindless zombies, colloquially known as 'walkers'. The series premiered on October 31, 2010, following the 2010 feature film of the same name. The series was developed for television by Frank Darabont, who wrote or co-wrote 61 of the 91 episodes of the series. He served as showrunner for the first season, but was replaced by Glen Mazzara in season two. The series is filmed in Atlanta, Georgia."
)

Tv_Show.create(
  title: "The Mandalorian",
  year: 2019,
  plot: "The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.",
  rating: 5,
  review: "The Mandalorian is an American space Western web television series created by Jon Favreau and released on Disney+. The series is set in the Star Wars universe five years after the events of Return of the Jedi and follows the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic. The Mandalorian is an American space Western web television series created by Jon Favreau and released on Disney+. The series is set in the Star Wars universe five years after the events of Return of the Jedi and follows the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic."
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
