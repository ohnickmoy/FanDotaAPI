class Api::V1::TeamsController < ApplicationController
    def index
        teams = Team.all()
        render json: TeamSerializer.new(teams)
        #below works, not sure how to fix aliasing issue (users as followers)
        # render json: TeamSerializer.new(teams, include: [:users])
    end

    def show
        team = Team.find(params[:id])
        render json: TeamSerializer.new(team)
    end
end
