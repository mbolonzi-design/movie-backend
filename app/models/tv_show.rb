class Tv_Show < ActiveRecord::Base
  has_many :episodes
  has_many :characters, through: :episodes
end


# Path: app/controllers/tv_shows_controller.rb
class TvShowsController < ApplicationController
  def index
    @tv_shows = TvShow.all
  end

  def show
    @tv_show = TvShow.find(params[:id])
  end
end
