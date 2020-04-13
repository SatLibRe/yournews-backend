class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users.to_json(include: [:sources, :countries, :custom_queries, :user_sources, :country_users, :custom_query_users])
    end 

    def create 
       user = User.new(name: params[:name],  password: params[:password], zipcode: params[:zipcode])
        if user.save 
            token = JWT.encode({user_id: user.id}, "code")
            render json: {user: user, token: token}
        else 
           render json: {errors: user.errors.full_messages}
        end 
    end 

    def show 
        user = User.find(params[:id])
        render json: user.to_json(include: [:sources, :countries, :custom_queries, :user_sources, :country_users, :custom_query_users])
     end 
    
    def destroy 
        user = User.find(params[:id])
        User.delete()
    end 

end
