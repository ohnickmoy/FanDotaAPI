class Api::V1::TeamFollowersController < ApplicationController
    def index
        allTeamsFollowers = TeamFollower.all()
        render json: TeamFollowerSerializer.new(allTeamsFollowers)
    end

    def show
        teamFollower = Team.find(params[:id])
        render json: TeamFollowerSerializer.new(teamFollower)
    end

    def create
        # byebug
        teamFollower = TeamFollower.new(tf_params)
        teamFollower.save
        render json: TeamFollowerSerializer.new(teamFollower, include: [:team])
    end

    def unfollow
        teamFollower = TeamFollower.find_by(team_id: params[:team_id], user_id: params[:user_id])
        teamFollower.destroy
        render json: TeamFollowerSerializer.new(teamFollower)
    end

    private 

    def tf_params
        params.require(:team_follower).permit(:team_id, :user_id)
    end
end