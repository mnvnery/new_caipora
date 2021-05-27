class SignUpsController < ApplicationController
    skip_before_action :authenticate_user!
    def new
        @sign_up = SignUp.new
        @trip = Trip.find(params[:trip_id])
    end

    def create
        @trip = Trip.find(params[:trip_id])
        @sign_up = SignUp.new(sign_up_params)
        @sign_up.trip_id = @trip.id
        if @sign_up.save
            redirect_to root_url, notice: 'Sign Up was a Success'
        else
            render :new
        end
    end

    private

    def sign_up_params
        params.permit(:name, :email, :phone, :NIF, :address, :post_code, :city, :password, :trip_id)
    end
end