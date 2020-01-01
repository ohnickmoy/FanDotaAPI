class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all()
        render json: UserSerializer.new(users, include: [:teams])
    end

    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user, include:[:teams])
    end

    def create
        user = User.create({username: params[:username], password: params[:password]})
        if user.save
            render json: UserSerializer.new(user), status: :ok
        else
            render json: {errors: user.errors.full_messages}
        end
    end
end
