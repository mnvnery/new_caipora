class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end

    def show
        @booking = current_user.bookings.find(params[:id])
    end

    def new
        @booking = Booking.new
        @trip = Trip.find(params[:trip_id])
        @bookings = @trip.bookings
        
    end 

    def create
        trip = Trip.find(params[:trip_id])
        booking = Booking.create!(trip: trip, amount: trip.price, state: 'pending', user_id: current_user.id)
        session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            line_items: [{
                name: trip.name,
                amount: trip.price_cents,
                currency: 'eur',
                quantity: 1
                }],
                success_url: booking_url(booking),
                cancel_url: booking_url(booking)
        )
        booking.update(checkout_session_id: session.id)
        redirect_to new_booking_payment_path(booking)
    end

    private 

    def client_params
        params.permit(:name, :email, :phone, :NIF, :address, :post_code, :city)
    end

    
end
