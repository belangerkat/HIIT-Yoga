class AuthenticationController < ApplicationController
    def login
        @user = User.find_by(username: params[:username])
        if @user
            if @user.authenticate(params[:password])

                payload = {user_id: @user.id}
                secret = Rails.application.secrets.secret_key_base

                token = JWT.encode(payload, secret)

                render json: {token: token, user_id: @user.id}
            else 
                render json: "Incorrect Username or Password", status: :unauthorized
            end
        else
            render json: "User Does Not Exist", status: :unauthorized
        end
    end
end
