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

    get "/itinerary" => "itineraries#index"
    post "/itinerary" => "itineraries#create"
    get "/itinerary/:id" => "itineraries#show"
    patch "/itinerary/:id" => "itineraries#update"
    delete "/itinerary/:id" => "itineraries#destroy"

    get "/trips" => "trips#index"
    post "/trips" => "trips#create"
    get "/trips/:id" => "trips#show"
    patch "/trips/:id" => "trips#update"
    delete "/trips/:id" => "trips#destroy"

    get "/categories" => "categories#index"
    post "/categories" => "categories#create"

  end
end
