class Eatery < ActiveRecord::Base
    has_many :checkins_and_ratings
    has_many :users, through: :checkins_and_ratings  
end