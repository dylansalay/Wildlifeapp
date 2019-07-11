class SightingsController < ApplicationController

    def new
        @sightings =Sighting.new
        render 'new'
    end

    def post
        @sightings = Sighting.where(date: params[:start_date]..params[:end_date])
        render json: @sightings.to_json(:include => :animal)
    end

    def index
        @sightings = Sighting.all
        render json:@sightings
    end

    def show
        @sightings = Sighting.find(params[:id])
        render json:@sightings
    end

    def create
        Sighting.create(sighting_params)
    end

    def update
        @sightings = Sighting.find(params[:id])
        @sightings.update(sighting_params)
        render json:@sightings
    end

    def destroy
        @sightings = Sighting.find(params[:id])
        @sightings.destroy
        render json:@sightings
    end

    def sighting_params
        params.require(:sighting).permit(:animal_id, :date, :latitude, :longitude, :start_date, :end_date)
    end
end
