class User  < ActiveRecord::Base
    has_many :checkins_and_ratings
    has_many :eateries, through: :checkins_and_ratings
    has_secure_password
end