class Api::UserTripsController < ApplicationController

  def create
    @user_trip = UserTrip.new(
    user_id: current_user.id,
    trip_id: params["trip_id"],
    planner: true,
      )
    if @user_trip.save
      render json: "Success"
    else
      render json: {error: @user_trip.errors.full_messages}, status: 404
    end
  end

end