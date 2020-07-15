class User  < ActiveRecord::Base
    has_many :ratings
    has_many :eateries, through: :ratings
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, uniqueness: true
end