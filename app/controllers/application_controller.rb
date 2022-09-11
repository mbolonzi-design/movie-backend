class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    all_movies = Movie.all
    all_movies.to_json
  end

  get './movies/:id' do
    movies = Movie.find(params[:id])
    movies.to_json
  end

end
