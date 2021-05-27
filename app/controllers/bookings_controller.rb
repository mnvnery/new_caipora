class BookingsController < ApplicationController
    skip_before_action :authenticate_user!

    def index
        @bookings = Booking.all
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def new
        @booking = Booking.new
        @trip = Trip.find(params[:trip_id])
        @bookings = @trip.bookings
        
    end 

    def create
        @trip = Trip.find(params[:trip_id])
        @booking = Booking.new()
        @booking.trip = @trip
        @booking.client = @client
        @booking.total_price = @trip.price
        if @client.save!
            @booking.save!
            redirect_to trip_path(@trip)
        end

    end

    private 


    def client_params
        params.permit(:name, :email, :phone, :NIF, :address, :post_code, :city)
    end
end
