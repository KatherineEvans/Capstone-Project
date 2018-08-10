class Api::ItinerariesController < ApplicationController
  before_action :authenticate_user

  def index
    @trips = current_user.trips
    render "index.json.jbuilder"
  end

  def create
    @itinerary = Itinerary.new(
    description: params["description"],
    time: params["time"],
    photo: params["photo"],
    trip_id: params["trip_id"]
    )
    if @itinerary.save
      render "show.json.jbuilder"
    else
      render json: {error: @itinerary.errors.full_messages}, status: 404
    end
  end

  def show
    @itinerary = Itinerary.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @itinerary = Itinerary.find_by(id: params[:id])
    @itinerary.description = params["description"] || @itinerary.description
    @itinerary.time = params["time"] || @itinerary.time
    @itinerary.photo = params["photo"] || @itinerary.photo
    @itinerary.trip_id = params["trip_id"] || @itinerary.trip_id

    if @itinerary.save
      render "show.json.jbuilder"
    else
      render json: {error: @itinerary.errors.full_messages}, status: 404
    end
  end

  def destroy
    @itinerary = Itinerary.find_by(id: params[:id])
    @itinerary.destroy
    render json: {message: "This activity has been canceled."}
  end

end
