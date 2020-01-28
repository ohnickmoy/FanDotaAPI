class Api::V1::AuthController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        token = JWT.encode({user_id: user.id}, `#{ENV[JWT_KEY]}`)
        if user && user.authenticate(params[:password])
            # byebug
            render json: UserSerializer.new(user, include:[:teams])
            # render json: UserSerializer.new({user: user, token: token, include:[:teams]})
        else
            render json: {errors: 'Username or password not correct.'}
        end
    end

    def auto_login
        session_user
        if session_user
            render json: UserSerializer.new(session_user, include:[:teams])
        else
            render json: {errors: 'User not found. Please login again'}
        end
    end
end
