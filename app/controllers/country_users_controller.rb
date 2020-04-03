class CountryUsersController < ApplicationController
    def index 
        country_users = CountryUser.all 
        render json: country_users
    end 

    def create 
        country_user = CountryUser.find_or_create_by(country_user_params)
        render json: country_user
    end 

    def show 
        country_user = CountryUser.find(params[:id])
        render json: country_user
    end 

    def country_user_params 
        params.require(:country_user).permit(:user_id, :country_id)
    end 
end
