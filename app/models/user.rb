class User < ApplicationRecord
    has_many :team_followers
    has_many :teams, through: :team_followers

    has_secure_password
    validates :username, uniqueness: true
end
