class SightingsController < ApplicationController

    def new
        @sightings =Sighting.new
        render 'new'
    end

    def post
        @sightings = Sighting.where(date: params[:start_date]..params[:end_date])
        if @sightings
        render json: @sightings.to_json(:include => :animal)
        else
        flash.now[:notice] = "There have been no sightings."
        end
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
        @sightings = Sighting.create(sighting_params)
        if @sightings.valid?
        render json:@sightings
        else
        render json: @sightings.errors.full_messages
        end
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
