json.Expenses @itineraries.each do |itinerary|
  json.partial! "itineraries.json.jbuilder", itinerary: itinerary
end