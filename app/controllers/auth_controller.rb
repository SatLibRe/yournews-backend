class AuthController < ApplicationController

    def login
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password]) 
            token = JWT.encode({user_id: user.id}, "code")
            render json: {user: user, token: token}
        else 
            render json: {errors: "Your Username or Password is inncorrect"}
        end 
    end 

    def autologin 
        if session_user
            render json: session_user
        else 
            render json: {errors: "Never heard of her... "}
        end 
    end 
end
