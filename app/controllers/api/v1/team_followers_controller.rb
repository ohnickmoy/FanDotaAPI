class Api::V1::TeamFollowersController < ApplicationController
    def index
        allTeamsFollowers = TeamFollower.all()
        render json: TeamFollowerSerializer.new(allTeamsFollowers)
    end

    def show
        teamFollower = Team.find(params[:id])
        render json: TeamFollowerSerializer.new(teamFollower)
    end
end
