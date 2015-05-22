class LocationsController < ApplicationController
  def index
    render json: Location.all
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
