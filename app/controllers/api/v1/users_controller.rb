class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all()
        #render json: UserSerializer.new(users)
        render json: UserSerializer.new(users, include: [:teams])
    end

    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user, include:[:teams])
    end
end
