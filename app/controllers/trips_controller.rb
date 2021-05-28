class TripsController < ApplicationController
    skip_before_action :authenticate_user!

    def index
        @trips = Trip.all
    end
    def new
        @trip = Trip.new(trip_params)
    end
    def show
        @trip = Trip.find(params[:id])
    end

    def edit
        @trip= Trip.find(params[:id])
    end

    def update
        @trip = Trip.find(params[:id])
        if @trip.update(trip_params)
            redirect_to trip_path(@trip)
        else
            render :new
        end
    end

    private 

    def trip_params
        params.require(:trip).permit(:location, :start_date, :end_date, :description, :price_cents, faqs_attributes: [:id, :question, :answer], programs_attributes: [:id, :day, :summary, :description])
    end
end
