class Api::ItinerariesController < ApplicationController
  before_action :authenticate_user

  def index
    @trips = current_user.trips
    render "index.json.jbuilder"
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

end
