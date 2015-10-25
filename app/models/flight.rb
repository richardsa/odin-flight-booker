class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => "Airport"
  belongs_to :to_airport, :class_name => "Airport"
  
  def self.get_dates
    pluck(:start).map{ |d| [ d.strftime("%m/%d/%Y"), d.to_date] }.uniq
  end
end
