json.trips @trips.each do |trip|
  json.partial! "trips.json.jbuilder", trip: trip
end