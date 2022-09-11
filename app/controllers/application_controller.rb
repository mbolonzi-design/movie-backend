class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/movies" do
    all_movies = Movie.all
    all_movies.to_json
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

  patch '/users/:id' do
    user = User.find(params[:id])
    user.update(
      username: params[:username],
      password_digest: params[:password_digest]
    )
    user.to_json
  end

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
