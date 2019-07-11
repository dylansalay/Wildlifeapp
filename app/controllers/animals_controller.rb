class AnimalsController < ApplicationController

    def index
        @animals = Animal.all
        render json:@animals
    end

    def show
        @animals = Animal.find(params[:id])
        render json: @animals.to_json(:include => :sightings)
    end

    def create
        @animals = Animal.create(animal_params)
        if @animals[:common_name] == @animals[:latin_name]
        render json: @animals.errors.full_messages
        elsif @animals.valid?
        render json:@animals
        else
        render json: @animals.errors.full_messages
        end
    end

    def update
        @animals = Animal.find(params[:id])
        @animals.update(animal_params)
        render json:@animals
    end

    def destroy
        @animals = Animal.find(params[:id])
        @animals.destroy
        render json:@animals
    end

    def animal_params
        params.require(:animal).permit(:common_name, :latin_name, :kingdom)
    end

end
