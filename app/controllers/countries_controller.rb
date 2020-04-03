class CountriesController < ApplicationController
    def index 
        countries = Country.all 
        render json: countries
    end 

    def create 
       country = Country.find_or_create_by(name: params[:name])
       render json: country
    end 

    def show 
        country = Country.find(params[:id])
        render json: country
     end 
end
