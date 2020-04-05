class CustomQueryUsersController < ApplicationController
    def index 
        custom_query_user_user = CustomQueryUser.all 
        render json: custom_query_user_user
    end 

    def create 
        custom_query_user = CustomQueryUser.find_or_create_by(custom_query_user_params)
        render json: custom_query_user
    end 

    def show 
        custom_query_user = CustomQueryUser.find(params[:id])
        render json: custom_query_user
    end 

    def custom_query_user_params 
        params.require(:custom_query_user).permit(:user_id, :custom_query_id)
    end 
end
