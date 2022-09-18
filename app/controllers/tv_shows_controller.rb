class TvShowsController < Sinatra::Base
    set:default_content_type, 'application/json'

    get '/tv_shows' do
        all_tv_shows = TvShow.all
        all_tv_shows.to_json
    end

    get '/tv_shows/:id' do
        tv_shows = TvShow.find(params[:id])
        tv_shows.to_json
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
end