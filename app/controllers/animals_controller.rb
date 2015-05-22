class AnimalsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Animal.all
  end

  def show
  end

  def create
  end

  # POST /animals/:id
  def update
    Rails.logger.info(animal_params)
    Animal.find(params[:id]).update(animal_params)
    head :ok
  end

  def destroy
  end

  private

  def animal_params
    params.permit(:name)
  end
end
