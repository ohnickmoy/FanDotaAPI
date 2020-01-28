class ApplicationController < ActionController::API
    def decode_token
        key = ENV["JWT_KEY"]
        JWT.decode(get_auth_header, key)[0]['user_id']
    end

    def get_auth_header
        request.headers['Authentication']
    end

    def session_user
        User.find(decode_token)
    end
end
