class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users
    end 

    def create 
       user = User.find_or_create_by(name: params[:name])
       render json: user
    end 

    def show 
        user = User.find(params[:id])
        render json: user
     end 
    
    def destroy 
        user = User.find(params[:id])
        User.delete()
    end 

end
