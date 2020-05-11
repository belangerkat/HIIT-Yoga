class ApplicationController < ActionController::API
    def authenticate
        begin
            authorization_header = request.headers["Authorization"]
            token = authorization_header.split(" ")[1]
            secret = Rails.application.secrets.secret_key_base
            decoded_token = JWT.decode(token, secret)
            payload = decoded_token[0]
            @user_id = payload["user_id"]
        rescue
            render json: {message: "Invalid!"}
        end
    end
end
