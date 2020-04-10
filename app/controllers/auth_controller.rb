class AuthController < ApplicationController

    def login
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password]) 
            render json: user
        else 
            render json: {errors: "Your Username or Password is inncorrect"}
        end 
    end 

    def autologin 
        user = User.find_by(id: request.headers["Authorization"])
        if user 
            render json: user
        else 
            render json: {errors: "Never heard of her... "}
        end 
    end 
end
