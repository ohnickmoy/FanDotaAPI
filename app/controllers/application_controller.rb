class ApplicationController < ActionController::API
    def decode_token
        JWT.decode(get_auth_header, `#{ENV[JWT_KEY]}`)[0]['user_id']
    end

    def get_auth_header
        request.headers['Authentication']
    end

    def session_user
        User.find(decode_token)
    end
end
