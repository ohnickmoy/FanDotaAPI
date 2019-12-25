class Api::V1::TeamsController < ApplicationController
    def index
        teams = Team.all()
        render json: TeamSerializer.new(teams)
    end

    def show
        team = Team.find(params[:id])
        render json: TeamSerializer.new(team)
    end
end
