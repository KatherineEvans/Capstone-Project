json.Expenses @trips.each do |trip|
  json.Trip_Name trip.name
  json.Itineraries trip.itineraries
end