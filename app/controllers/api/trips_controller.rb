class Api::TripsController < ApplicationController
  
  def index
    @trips = Trip.all
    render "index.json.jbuilder"
  end

  def create
    @trip = Trip.new(
    name: params["name"],
    country: params["country"],
    state: params["state"],
    city: params["city"],
    postal_code: params["postal_code"], 
    start_date: params["start_date"],
    end_date: params["end_date"],
    user_id: current_user.id
    )
    if @trip.save
      render "show.json.jbuilder"
    else
      render json: {error: @trip.errors.full_messages}, status: 404
    end
  end

  def show
    @trip = Trip.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @trip = Trip.find_by(id: params[:id])
    @trip.name = params["name"] || @trip.name
    @trip.country = params["country"] || @trip.country
    @trip.state = params["state"] || @trip.state
    @trip.city = params["city"] || @trip.city
    @trip.postal_code = params["postal_code"] || @trip.postal_code
    @trip.start_date = params["start_date"] || @trip.start_date
    @trip.end_date = params["end_date"] || @trip.end_date
  
    if @trip.save
      render "show.json.jbuilder"
    else
      render json: {error: @trip.errors.full_messages}, status: 404
    end
  end

  def destroy
    @trip = Trip.find_by(id: params[:id])
    @trip.destroy
    render json: {message: "This trip has been canceled."}
  end

end
