class SourcesController < ApplicationController
    def index 
        sources = Source.all 
        render json: sources
    end 

    def create 
        source = Source.find_or_create_by(source_params)
        render json: source
    end 

    def show 
        source = Source.find(params[:id])
        render json: source
    end 

    def source_params 
        params.require(:source).permit(:name)
    end 

end
