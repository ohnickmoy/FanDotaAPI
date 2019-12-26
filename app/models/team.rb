class Team < ApplicationRecord
    has_many :team_followers
    # has_many :users, through: :team_followers
    #below line to alias users as followers
    has_many :followers, through: :team_followers, :source => :user
end
