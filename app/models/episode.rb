class Episode < ActiveRecord::Base
    belongs_to :tv_show
    has_many :characters
end