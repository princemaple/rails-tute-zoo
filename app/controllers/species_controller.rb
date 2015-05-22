class SpeciesController < ApplicationController
  def index
    render json: Species.all
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
