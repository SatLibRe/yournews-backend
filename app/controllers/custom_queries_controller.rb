class CustomQueriesController < ApplicationController
    def index 
        custom_querys = CustomQuery.all 
        render json: custom_querys
    end 

    def create 
        custom_query = CustomQuery.find_or_create_by(custom_query_params)
        render json: custom_query
    end 

    def show 
        custom_query = CustomQuery.find(params[:id])
        render json: custom_query
    end 

    def custom_query_params 
        params.require(:custom_query).permit(:name)
    end 
end
