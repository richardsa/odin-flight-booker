class FlightsController < ApplicationController
  
  
  def index
    
    @airport_options = Airport.all.map{|u| [ u.code, u.id ] }
    @dates = Flight.get_dates
    @flights = Flight.all
    
    if params[:start] != nil && params[:from_airport_id] != nil && params[:to_airport_id]
    @searching = true
      if params[:from_airport_id] == params[:to_airport_id]
				flash.now[:error] = "Your 'From' and 'To' airports can't be the same"
			else
				@matched_flights = @flights.where("from_airport_id = ? AND to_airport_id = ? AND strftime('%Y-%m-%d', start) = ?", params[:from_airport_id], params[:to_airport_id], params[:start])
       
			end
    end
    end
end
