class Api::ItinerariesController < ApplicationController
  before_action :authenticate_user

  def index
    @itineraries = current_user.itineraries
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
