json.itineraries @itineraries.order("time asc").each do |itinerary|
  json.trip_id itinerary.trip_id
  json.trip_name itinerary.trip.name
  json.description itinerary.description
  json.time itinerary.time
  json.photo itinerary.photo
  json.show_image false
end