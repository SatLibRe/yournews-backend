class UserSourcesController < ApplicationController
    def index 
        user_sources = UserSource.all 
        render json: user_sources
    end 

    def create 
        user_source = UserSource.find_or_create_by(user_source_params)
        render json: user_source
    end 

    def show 
        user_source = UserSource.find(params[:id])
        render json: user_source
    end 

    def user_source_params 
        params.require(:user_source).permit(:user_id, :source_id)
    end 
end
