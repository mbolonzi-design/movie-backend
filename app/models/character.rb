class Character < ActiveRecord::Base
    has_many :episodes
    has_many :tv_shows, through: :episodes
end

    