class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users.to_json(include: [:sources, :countries, :custom_queries, :user_sources])
    end 

    def create 
       user = User.find_or_create_by(name: params[:name])
       render json: user
    end 

    def show 
        user = User.find(params[:id])
        render json: user.to_json(include: [:sources, :countries, :custom_queries, :user_sources])
     end 
    
    def destroy 
        user = User.find(params[:id])
        User.delete()
    end 

end
