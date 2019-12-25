class Team < ApplicationRecord
    has_many :team_followers
    has_many :followers, through: :team_followers, :source => :user
end
