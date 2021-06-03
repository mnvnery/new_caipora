class PaymentsController < ApplicationController
    layout "devise", only: [:new]
    def new
        @booking = current_user.bookings.where(state:'pending').find(params[:booking_id])
    end
end
