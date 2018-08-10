json.Trips @trips.each do |trip|
  json.Trip trip.name
  json.Travelers trip.users
end