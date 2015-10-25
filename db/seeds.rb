# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airport.create!(code:  "ATL")
Airport.create!(code:  "LAX")
Airport.create!(code:  "PHL")
Airport.create!(code:  "NYC")
Airport.create!(code:  "SFO")





Airport.all.each do |airport1|
  Airport.all.each do |airport2|
    unless airport1 == airport2
      Flight.create(from_airport_id: airport1.id, to_airport_id: airport2.id, start: Time.now, duration: 1.hour)
      Flight.create(from_airport_id: airport1.id, to_airport_id: airport2.id, start: 3.hours.from_now, duration: 2.hours)
      Flight.create(from_airport_id: airport1.id, to_airport_id: airport2.id, start: 6.hours.from_now, duration: 1.hour)
      Flight.create(from_airport_id: airport1.id, to_airport_id: airport2.id, start: 1.day.from_now, duration: 2.hours)
      Flight.create(from_airport_id: airport1.id, to_airport_id: airport2.id, start: (1.day + 6.hours).from_now, duration: 1.hour)
      Flight.create(from_airport_id: airport1.id, to_airport_id: airport2.id, start: 2.days.from_now, duration: 3.hours)
      Flight.create(from_airport_id: airport1.id, to_airport_id: airport2.id, start: (2.days + 3.hours).from_now, duration: 2.hours)
    end
  end
end
