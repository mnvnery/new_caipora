class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
    @trips = Trip.all
  end

  def contact
  end
  
  
end
