Rails.application.routes.draw do
  namespace :api do

    post "/login" => "sessions#create"

    get "/travelers" => "users#index"
    post "/travelers" => "users#create"
    get "/travelers/:id" => "users#show"
    patch "/travelers/:id" => "users#update"
    delete "/travelers/:id" => "users#destroy"

    get "/expenses" => "expenses#index"
    post "/expenses" => "expenses#create"
    get "/expenses/:id" => "expenses#show"
    patch "/expenses/:id" => "expenses#update"
    delete "/expenses/:id" => "expenses#destroy"

    get "/trips/:id/itinerary" => "itineraries#index"
    post "/itinerary" => "itineraries#create"
    get "/trips/:id/itinerary/:id" => "itineraries#show"
    patch "/trips/:id/itinerary/:id" => "itineraries#update"
    delete "/trips/:id/itinerary/:id" => "itineraries#destroy"

    get "/trips" => "trips#index"
    post "/trips" => "trips#create"
    get "/trips/:id" => "trips#show"
    patch "/trips/:id" => "trips#update"
    delete "/trips/:id" => "trips#destroy"

    post "/usertrips" => "user_trips#create"

    get "/categories" => "categories#index"
    post "/categories" => "categories#create"

    post "/sendtext" => "twilio#index"

  end
end
