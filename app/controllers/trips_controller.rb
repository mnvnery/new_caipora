class TripsController < ApplicationController
    skip_before_action :authenticate_user!

    def index
        @trips = Trip.all
    end
    
    def show
        @trip = Trip.find(params[:id])
    end

    def edit
        @trip= Trip.find(params[:id])
    end

    def update
        @trip = Trip.find(params[:id])
        @trip.update(trip_params)
    end

    private 

    def trip_params
        params.require(:trip).permit(:)
    end
end
