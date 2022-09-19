class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  

  #GET /TvShows

  get '/tv_shows' do
      all_tv_shows = Tv_Show.all
      all_tv_shows.to_json
  end

  get '/tv_shows/:id' do
      tv_shows = Tv_Show.find(params[:id])
      tv_shows.to_json
  end

  get '/tv_shows/:title' do
      tv_shows = Tv_Show.find_by(title: params[:title])
      tv_shows.to_json
  end

  get '/tv_shows/:year' do
      tv_shows = Tv_Show.find_by(year: params[:year])
      tv_shows.to_json
  end

  get '/tv_shows/:rating' do
      tv_shows = Tv_Show.find_by(rating: params[:rating])
      tv_shows.to_json
  end

  get '/tv_shows/:id/episodes' do
      tv_shows = Tv_Show.find(params[:id])
      tv_shows.episodes.to_json
  end

  get '/tv_shows/:id/characters' do
      tv_shows = Tv_Show.find(params[:id])
      tv_shows.characters.to_json
  end


  get '/episodes' do
      all_episodes = Episode.all
      all_episodes.to_json
  end

  get '/episodes/:id' do
      episodes = Episode.find(params[:id])
      episodes.to_json
  end

  get '/characters' do
      all_characters = Character.all
      all_characters.to_json
  end

  get '/characters/:id' do
      characters = Character.find(params[:id])
      characters.to_json
  end
  # GET /Movies
  get "/movies" do
    all_movies = Movie.all
    all_movies.to_json
  end

  get '/movies/:title' do
      movies = Movie.find_by(title: params[:title])
      movies.to_json
  end

  get '/movies/:id' do
    movies = Movie.find(params[:id])
    movies.to_json
  end

  get '/reviews' do
    all_reviews = Review.all
    all_reviews.to_json
  end

  get '/reviews/:id' do
    reviews = Review.find(params[:id])
    reviews.to_json
  end

  get '/users' do
    all_users = User.all
    all_users.to_json
  end

  get '/users/:id' do
    users = User.find(params[:id])
    users.to_json
  end

  # POST /TvShows

  post '/tv_shows' do
      tv_show = TvShow.create(
          title: params[:title],
          image_url: params[:image_url],
          year: params[:year],
          plot: params[:plot],
          rating: params[:rating]
      )
      tv_show.to_json
  end

  post '/episodes' do
      episode = Episode.create(
          title: params[:title],
          image_url: params[:image_url],
          year: params[:year],
          plot: params[:plot],
          rating: params[:rating],
          tv_show_id: params[:tv_show_id]
      )
      episode.to_json
  end

  post '/characters' do
      character = Character.create(
          name: params[:name],
          image_url: params[:image_url],
          actor: params[:actor],
          tv_show_id: params[:tv_show_id]
      )
      character.to_json
  end

  post '/movies' do
    movie = Movie.create(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      rating: params[:rating]
    )
    movie.to_json
  end

  post '/reviews' do
    review = Review.create(
      title: params[:title],
      content: params[:content],
      rating: params[:rating],
      movie_id: params[:movie_id],
      user_id: params[:user_id]
    )
    review.to_json
  end

  post '/users' do
    user = User.create(
      username: params[:username],
      password_digest: params[:password_digest]
    )
    user.to_json
  end

  # PATCH /TvShows

  patch '/tv_shows/:id' do
      tv_show = TvShow.find(params[:id])
      tv_show.update(
          title: params[:title],
          image_url: params[:image_url],
          year: params[:year],
          plot: params[:plot],
          rating: params[:rating]
      )
      tv_show.to_json
  end

  patch '/episodes/:id' do
      episode = Episode.find(params[:id])
      episode.update(
          title: params[:title],
          image_url: params[:image_url],
          year: params[:year],
          plot: params[:plot],
          rating: params[:rating],
          tv_show_id: params[:tv_show_id]
      )
      episode.to_json
  end

  patch '/characters/:id' do
      character = Character.find(params[:id])
      character.update(
          name: params[:name],
          image_url: params[:image_url],
          actor: params[:actor],
          tv_show_id: params[:tv_show_id]
      )
      character.to_json
  end

  # PATCH /Movies

  patch '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.update(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      rating: params[:rating]
    )
    movie.to_json
  end

  patch '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.update(
      rating: params[:rating]
    )
    movie.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      title: params[:title],
      content: params[:content],
      rating: params[:rating],
      movie_id: params[:movie_id],
      user_id: params[:user_id]
    )
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating]
    )
    review.to_json
  end

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      username: params[:username],
      password_digest: params[:password_digest]
    )
    user.to_json
  end

  # DELETE /TvShows

  delete '/tv_shows/:id' do
      tv_show = TvShow.find(params[:id])
      tv_show.destroy
      tv_show.to_json
  end

  delete '/episodes/:id' do
      episode = Episode.find(params[:id])
      episode.destroy
      episode.to_json
  end

  delete '/characters/:id' do
      character = Character.find(params[:id])
      character.destroy
      character.to_json
  end

  # DELETE /Movies

  delete '/movies/:id' do
    movie = Movie.find(params[:id])
    movie.destroy
    movie.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  delete '/users/:id' do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end

end
