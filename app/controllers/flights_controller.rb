class FlightsController < ApplicationController
  
  
  def index
    
    @airport_options = Airport.all.map{|u| [ u.code, u.id ] }
    @dates = Flight.get_dates
    @flights = Flight.all
  end
end
