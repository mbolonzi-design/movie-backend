class Movie < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews
end

# Path: app/models/review.rb
# class Review < ActiveRecord::Base
#   belongs_to :movie
#   belongs_to :user
# end

# # Path: app/models/user.rb
# class User < ActiveRecord::Base
#   has_many :reviews
#   has_many :movies, through: :reviews
# end

# # Path: app/models/genre.rb
# class Genre < ActiveRecord::Base
#   has_many :movie_genres
#   has_many :movies, through: :movie_genres
# end

# # Path: app/models/movie_genre.rb
# class MovieGenre < ActiveRecord::Base
#   belongs_to :movie
#   belongs_to :genre
# end

# # Path: app/models/actor.rb
# class Actor < ActiveRecord::Base
#   has_many :movie_actors
#   has_many :movies, through: :movie_actors
# end

# # Path: app/models/movie_actor.rb
# class MovieActor < ActiveRecord::Base
#   belongs_to :movie
#   belongs_to :actor
# end

# # Path: app/models/director.rb
# class Director < ActiveRecord::Base
#   has_many :movies
# end

# # Path: app/models/writer.rb
# class Writer < ActiveRecord::Base
#   has_many :movies
# end

# # Path: app/models/producer.rb
# class Producer < ActiveRecord::Base
#   has_many :movies
# end

# # Path: app/models/country.rb
# class Country < ActiveRecord::Base
#   has_many :movies
# end

# # Path: app/models/language.rb
# class Language < ActiveRecord::Base
#   has_many :movies
# end

# # Path: app/models/award.rb
# class Award < ActiveRecord::Base
#   has_many :movie_awards
#   has_many :movies, through: :movie_awards
# end

# # Path: app/models/movie_award.rb
# class MovieAward < ActiveRecord::Base
#   belongs_to :movie
#   belongs_to :award
# end

# # Path: app/models/award_category.rb
# class AwardCategory < ActiveRecord::Base
#   has_many :awards
# end

# # Path: app/models/award_company.rb
# class AwardCompany < ActiveRecord::Base
#   has_many :awards
# end

# # Path: app/models/award_country.rb
# class AwardCountry < ActiveRecord::Base
#   has_many :awards
# end

# #