class ClientsController < ApplicationController
    skip_before_action :authenticate_user!

    def index
        @clients = Clients.all
    end

    def show
        @client = Client.find(params[:id])
    end

    def new
        @client = Client.new(client_params)
        @trip = Trip.find(params[:trip_id])
        @bookings = Booking.new
    end 

    def create

    end

    private

    def client_params
        params.require(:client).permit(:name, :email, :phone, :NIF, :address, :post_code, :city)
    end

end
